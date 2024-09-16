INSERT INTO `email_templates` (`language_id`, `name`, `alias`, `subject`, `body`, `lang`, `type`, `status`, `group`, `created_at`, `updated_at`) VALUES
(1, 'Notify User on Crypto Exchange', 'notify-user-on-crypto-exchange', 'Crypto Exchange Notification', 'Hi <b>{user}</b>,\r\n                    <br><br>We would like to inform you that the transaction for <b>{transaction_type}</b> with the ID #<b>{uuid}</b> has been updated to <b>{status}</b> by the system administrator.<br></div><b><br>\r\n                    <br><br><b><u><i>Here’s a brief overview of the Transaction:</i></u></b>\r\n                    <br><br><b><u>Exchange Amount:</u></b> {amount}\r\n                    <br><br><b><u>Fee:</u></b> {fee}\r\n                    <br><br><b><u>Get Amount:</u></b> {get_amount}\r\n                    <br><br><b><u>Send via:</u></b> {send_via}\r\n                    <br><br><b><u>Receive via:</u></b> {receive_via}\r\n                    <br><br><b><u>Exchange at:</u></b> {created_at}\r\n                    <br><br>If you have any questions, please feel free to reply to this email.\r\n                    <br><br>Regards,\r\n                    <br><b>{soft_name}</b>', 'en', 'email', 'Active', 'Crypto Exchange', '2024-06-03 09:41:52', NULL),
(2, 'Notify User on Crypto Exchange', 'notify-user-on-crypto-exchange', '', '', 'ar', 'email', 'Active', 'Crypto Exchange', '2024-06-03 09:41:52', NULL),
(3, 'Notify User on Crypto Exchange', 'notify-user-on-crypto-exchange', '', '', 'fr', 'email', 'Active', 'Crypto Exchange', '2024-06-03 09:41:52', NULL),
(4, 'Notify User on Crypto Exchange', 'notify-user-on-crypto-exchange', '', '', 'pt', 'email', 'Active', 'Crypto Exchange', '2024-06-03 09:41:52', NULL),
(5, 'Notify User on Crypto Exchange', 'notify-user-on-crypto-exchange', '', '', 'ru', 'email', 'Active', 'Crypto Exchange', '2024-06-03 09:41:52', NULL),
(6, 'Notify User on Crypto Exchange', 'notify-user-on-crypto-exchange', '', '', 'es', 'email', 'Active', 'Crypto Exchange', '2024-06-03 09:41:52', NULL),
(7, 'Notify User on Crypto Exchange', 'notify-user-on-crypto-exchange', '', '', 'tr', 'email', 'Active', 'Crypto Exchange', '2024-06-03 09:41:52', NULL),
(8, 'Notify User on Crypto Exchange', 'notify-user-on-crypto-exchange', '', '', 'ch', 'email', 'Active', 'Crypto Exchange', '2024-06-03 09:41:52', NULL),
(1, 'Notify User on Crypto Exchange', 'crypto-transaction-status-update', 'Crypto Exchange Status Update', 'Hi {user}, The transaction {transaction_type} with ID #{uuid} has been updated to {status}  by the administrator.Regards, {soft_name}.', 'en', 'sms', 'Active', 'Crypto Exchange', '2024-06-03 09:41:52', NULL),
(2, 'Notify User on Crypto Exchange', 'crypto-transaction-status-update', '', '', 'ar', 'sms', 'Active', 'Crypto Exchange', '2024-06-03 09:41:52', NULL),
(3, 'Notify User on Crypto Exchange', 'crypto-transaction-status-update', '', '', 'fr', 'sms', 'Active', 'Crypto Exchange', '2024-06-03 09:41:52', NULL),
(4, 'Notify User on Crypto Exchange', 'crypto-transaction-status-update', '', '', 'pt', 'sms', 'Active', 'Crypto Exchange', '2024-06-03 09:41:52', NULL),
(5, 'Notify User on Crypto Exchange', 'crypto-transaction-status-update', '', '', 'ru', 'sms', 'Active', 'Crypto Exchange', '2024-06-03 09:41:52', NULL),
(6, 'Notify User on Crypto Exchange', 'crypto-transaction-status-update', '', '', 'es', 'sms', 'Active', 'Crypto Exchange', '2024-06-03 09:41:52', NULL),
(7, 'Notify User on Crypto Exchange', 'crypto-transaction-status-update', '', '', 'tr', 'sms', 'Active', 'Crypto Exchange', '2024-06-03 09:41:52', NULL),
(8, 'Notify User on Crypto Exchange', 'crypto-transaction-status-update', '', '', 'ch', 'sms', 'Active', 'Crypto Exchange', '2024-06-03 09:41:52', NULL);