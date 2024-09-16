<?php

declare(strict_types=1);

namespace BitWasp\Bitcoin\Script\Interpreter;

use BitWasp\Buffertools\BufferInterface;

class Stack implements \Countable, \ArrayAccess, \Iterator
{
    /**
     * @var int
     */
    private $position = 0;

    /**
     * @var BufferInterface[]
     */
    private $values = [];

    /**
     * Stack constructor.
     * @param BufferInterface[] $values
     */
    public function __construct(array $values = [])
    {
        $this->values = array_map(function (BufferInterface $value) {
            return $value;
        }, $values);
    }

    /**
     * @return BufferInterface[]
     */
    public function all()
    {
        return $this->values;
    }

    public function current(): mixed
    {
        return $this->values[$this->position];
    }

    public function next(): void
    {
        ++$this->position;
    }

    /**
     * @return int
     */
    public function key(): int
    {
        return $this->position;
    }

    /**
     * @return bool
     */
    public function valid(): bool
    {
        return isset($this->values[$this->position]);
    }

    public function rewind(): void
    {
        $this->position = 0;
    }

    /**
     * @return int
     */
    public function count(): int
    {
        return count($this->values);
    }

    /**
     * @return bool
     */
    public function isEmpty(): bool
    {
        return count($this->values) === 0;
    }

    /**
     * @return BufferInterface
     */
    public function bottom(): BufferInterface
    {
        $count = count($this);
        if ($count < 1) {
            throw new \RuntimeException('No values in stack');
        }

        return $this->values[$count - 1];
    }

    /**
     * @see \ArrayAccess::offsetGet()
     * @param int $offset
     * @return \BitWasp\Buffertools\BufferInterface
     */
    public function offsetGet($offset): BufferInterface
    {
        $index = count($this) + $offset;
        if (!isset($this->values[$index])) {
            throw new \RuntimeException('No value at this position');
        }

        return $this->values[$index];
    }

    /**
     * @see \ArrayAccess::offsetSet()
     * @param int $offset
     * @param BufferInterface $value
     * @throws \InvalidArgumentException
     */
    public function offsetSet($offset, $value): void
    {
        if (!$value instanceof BufferInterface) {
            throw new \InvalidArgumentException;
        }

        $count = count($this);
        $index = $count + $offset;
        if (isset($this->values[$index])) {
            $this->values[$index] = $value;
            return;
        }

        if ($index !== $count) {
            throw new \RuntimeException('Index must be end position');
        }
    }

    /**
     * @see \ArrayAccess::offsetExists()
     * @param int $offset
     * @return bool
     */
    public function offsetExists($offset): bool
    {
        $index = count($this) + $offset;
        return isset($this->values[$index]);
    }

    /**
     * @see \ArrayAccess::offsetUnset()
     * @param int $offset
     */
    public function offsetUnset($offset): void
    {
        $count = count($this);
        $index = $count + $offset;
        if (!isset($this->values[$index])) {
            throw new \RuntimeException('Nothing at this position');
        }

        array_splice($this->values, $index, 1);
    }

    /**
     * @param int $first
     * @param int $second
     */
    public function swap($first, $second): void
    {
        $val1 = $this->offsetGet($first);
        $val2 = $this->offsetGet($second);
        $this->offsetSet($second, $val1);
        $this->offsetSet($first, $val2);
    }

    /**
     * @param int $offset
     * @param BufferInterface $value
     */
    public function add($offset, $value): void
    {
        $size = count($this);
        $index = $size + $offset;
        if ($index > $size) {
            throw new \RuntimeException('Invalid add position');
        }

        // Unwind current values, push provided value, reapply popped values
        $values = [];
        for ($i = $size; $i > $index; $i--) {
            $values[] = $this->pop();
        }

        $this->push($value);
        for ($i = count($values); $i > 0; $i--) {
            $this->push(array_pop($values));
        }
    }

    public function pop(): mixed
    {
        $count = count($this);
        if ($count === 0) {
            throw new \RuntimeException('Cannot pop from empty stack');
        }

        $value = array_pop($this->values);
        return $value;
    }

    public function push($buffer): void
    {
        $this->values[] = $buffer;
    }

    /**
     * @return int
     */
    public function end(): int
    {
        $count = count($this);
        if ($count === 0) {
            return 0;
        }

        return $count - 1;
    }

    /**
     * @param int $length
     * @return $this
     */
    public function resize($length): mixed
    {
        if ($length > count($this)) {
            throw new \RuntimeException('Invalid start or length');
        }

        while (count($this) > $length) {
            $this->pop();
        }

        return $this;
    }
}
