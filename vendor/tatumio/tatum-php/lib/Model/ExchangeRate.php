<?php

/**
 * ExchangeRate Model
 *
 * @copyright (c) 2022-2023 tatum.io
 * @license   MIT
 * @package   Tatum
 * @author    Mark Jivko
 * @link      https://tatum.io/
 *
 * NOTE: This class is auto-generated by tatum.io
 * Do not edit this file manually!
 */

namespace Tatum\Model;
!defined("TATUM-SDK") && exit();

/**
 * ExchangeRate Model
 * 
 * @description FIAT value in EURO of the FIAT or crypto asset.
 */
class ExchangeRate extends AbstractModel {

    public const _D = null;
    public const ID_AED = 'AED';
    public const ID_AFN = 'AFN';
    public const ID_ALL = 'ALL';
    public const ID_AMD = 'AMD';
    public const ID_ANG = 'ANG';
    public const ID_AOA = 'AOA';
    public const ID_ARS = 'ARS';
    public const ID_AUD = 'AUD';
    public const ID_AWG = 'AWG';
    public const ID_AZN = 'AZN';
    public const ID_BAM = 'BAM';
    public const ID_BAT = 'BAT';
    public const ID_BBD = 'BBD';
    public const ID_BCH = 'BCH';
    public const ID_BDT = 'BDT';
    public const ID_BGN = 'BGN';
    public const ID_BHD = 'BHD';
    public const ID_BIF = 'BIF';
    public const ID_BMD = 'BMD';
    public const ID_BND = 'BND';
    public const ID_BOB = 'BOB';
    public const ID_BRL = 'BRL';
    public const ID_BSD = 'BSD';
    public const ID_BTC = 'BTC';
    public const ID_BTN = 'BTN';
    public const ID_BWP = 'BWP';
    public const ID_BYN = 'BYN';
    public const ID_BYR = 'BYR';
    public const ID_BZD = 'BZD';
    public const ID_CAD = 'CAD';
    public const ID_CDF = 'CDF';
    public const ID_CHF = 'CHF';
    public const ID_CLF = 'CLF';
    public const ID_CLP = 'CLP';
    public const ID_CNY = 'CNY';
    public const ID_COP = 'COP';
    public const ID_CRC = 'CRC';
    public const ID_CUC = 'CUC';
    public const ID_CUP = 'CUP';
    public const ID_CVE = 'CVE';
    public const ID_CZK = 'CZK';
    public const ID_DJF = 'DJF';
    public const ID_DKK = 'DKK';
    public const ID_DOP = 'DOP';
    public const ID_DOGE = 'DOGE';
    public const ID_DZD = 'DZD';
    public const ID_EGP = 'EGP';
    public const ID_ERN = 'ERN';
    public const ID_ETB = 'ETB';
    public const ID_ETH = 'ETH';
    public const ID_EUR = 'EUR';
    public const ID_FJD = 'FJD';
    public const ID_FKP = 'FKP';
    public const ID_FLOW = 'FLOW';
    public const ID_FUSD = 'FUSD';
    public const ID_FREE = 'FREE';
    public const ID_GMC = 'GMC';
    public const ID_GMC_BSC = 'GMC_BSC';
    public const ID_RMD = 'RMD';
    public const ID_GBP = 'GBP';
    public const ID_GEL = 'GEL';
    public const ID_GGP = 'GGP';
    public const ID_GHS = 'GHS';
    public const ID_GIP = 'GIP';
    public const ID_GMD = 'GMD';
    public const ID_GNF = 'GNF';
    public const ID_GTQ = 'GTQ';
    public const ID_GYD = 'GYD';
    public const ID_HKD = 'HKD';
    public const ID_HNL = 'HNL';
    public const ID_HRK = 'HRK';
    public const ID_HTG = 'HTG';
    public const ID_HUF = 'HUF';
    public const ID_IDR = 'IDR';
    public const ID_ILS = 'ILS';
    public const ID_IMP = 'IMP';
    public const ID_INR = 'INR';
    public const ID_IQD = 'IQD';
    public const ID_IRR = 'IRR';
    public const ID_ISK = 'ISK';
    public const ID_JEP = 'JEP';
    public const ID_JMD = 'JMD';
    public const ID_JOD = 'JOD';
    public const ID_JPY = 'JPY';
    public const ID_KES = 'KES';
    public const ID_KGS = 'KGS';
    public const ID_KHR = 'KHR';
    public const ID_KMF = 'KMF';
    public const ID_KPW = 'KPW';
    public const ID_KRW = 'KRW';
    public const ID_KWD = 'KWD';
    public const ID_KYD = 'KYD';
    public const ID_KZT = 'KZT';
    public const ID_LAK = 'LAK';
    public const ID_LBP = 'LBP';
    public const ID_LEO = 'LEO';
    public const ID_LINK = 'LINK';
    public const ID_LKR = 'LKR';
    public const ID_LRD = 'LRD';
    public const ID_LSL = 'LSL';
    public const ID_LTC = 'LTC';
    public const ID_LTL = 'LTL';
    public const ID_LVL = 'LVL';
    public const ID_LYD = 'LYD';
    public const ID_MAD = 'MAD';
    public const ID_MDL = 'MDL';
    public const ID_MGA = 'MGA';
    public const ID_MKD = 'MKD';
    public const ID_MKR = 'MKR';
    public const ID_MMK = 'MMK';
    public const ID_MMY = 'MMY';
    public const ID_MNT = 'MNT';
    public const ID_MOP = 'MOP';
    public const ID_MRO = 'MRO';
    public const ID_MUR = 'MUR';
    public const ID_MVR = 'MVR';
    public const ID_MWK = 'MWK';
    public const ID_MXN = 'MXN';
    public const ID_MYR = 'MYR';
    public const ID_MZN = 'MZN';
    public const ID_NAD = 'NAD';
    public const ID_NGN = 'NGN';
    public const ID_NIO = 'NIO';
    public const ID_NOK = 'NOK';
    public const ID_NPR = 'NPR';
    public const ID_NZD = 'NZD';
    public const ID_OMR = 'OMR';
    public const ID_PAB = 'PAB';
    public const ID_PAX = 'PAX';
    public const ID_PAXG = 'PAXG';
    public const ID_PEN = 'PEN';
    public const ID_PGK = 'PGK';
    public const ID_PHP = 'PHP';
    public const ID_PKR = 'PKR';
    public const ID_PLN = 'PLN';
    public const ID_PYG = 'PYG';
    public const ID_QAR = 'QAR';
    public const ID_RON = 'RON';
    public const ID_RSD = 'RSD';
    public const ID_RUB = 'RUB';
    public const ID_RWF = 'RWF';
    public const ID_SAR = 'SAR';
    public const ID_SBD = 'SBD';
    public const ID_SCR = 'SCR';
    public const ID_SDG = 'SDG';
    public const ID_SEK = 'SEK';
    public const ID_SGD = 'SGD';
    public const ID_SHP = 'SHP';
    public const ID_SLL = 'SLL';
    public const ID_SOS = 'SOS';
    public const ID_SRD = 'SRD';
    public const ID_STD = 'STD';
    public const ID_SVC = 'SVC';
    public const ID_SYP = 'SYP';
    public const ID_SZL = 'SZL';
    public const ID_THB = 'THB';
    public const ID_TJS = 'TJS';
    public const ID_TMT = 'TMT';
    public const ID_TND = 'TND';
    public const ID_TOP = 'TOP';
    public const ID__TRY = 'TRY';
    public const ID_TTD = 'TTD';
    public const ID_TRON = 'TRON';
    public const ID_TUSD = 'TUSD';
    public const ID_BUSD = 'BUSD';
    public const ID_TWD = 'TWD';
    public const ID_TZS = 'TZS';
    public const ID_UAH = 'UAH';
    public const ID_UGX = 'UGX';
    public const ID_UNI = 'UNI';
    public const ID_USD = 'USD';
    public const ID_USDC = 'USDC';
    public const ID_USDT = 'USDT';
    public const ID_USDT_TRON = 'USDT_TRON';
    public const ID_USDT_MATIC = 'USDT_MATIC';
    public const ID_UYU = 'UYU';
    public const ID_UZS = 'UZS';
    public const ID_VEF = 'VEF';
    public const ID_VND = 'VND';
    public const ID_VUV = 'VUV';
    public const ID_WBTC = 'WBTC';
    public const ID_WST = 'WST';
    public const ID_XAF = 'XAF';
    public const ID_XAG = 'XAG';
    public const ID_XAU = 'XAU';
    public const ID_XCD = 'XCD';
    public const ID_XCON = 'XCON';
    public const ID_XDR = 'XDR';
    public const ID_XLM = 'XLM';
    public const ID_XOF = 'XOF';
    public const ID_XPF = 'XPF';
    public const ID_XRP = 'XRP';
    public const ID_YER = 'YER';
    public const ID_ZAR = 'ZAR';
    public const ID_ZMK = 'ZMK';
    public const ID_ZMW = 'ZMW';
    public const ID_ZWL = 'ZWL';
    public const BASE_PAIR_AED = 'AED';
    public const BASE_PAIR_AFN = 'AFN';
    public const BASE_PAIR_ALL = 'ALL';
    public const BASE_PAIR_AMD = 'AMD';
    public const BASE_PAIR_ANG = 'ANG';
    public const BASE_PAIR_AOA = 'AOA';
    public const BASE_PAIR_ARS = 'ARS';
    public const BASE_PAIR_AUD = 'AUD';
    public const BASE_PAIR_AWG = 'AWG';
    public const BASE_PAIR_AZN = 'AZN';
    public const BASE_PAIR_BAM = 'BAM';
    public const BASE_PAIR_BAT = 'BAT';
    public const BASE_PAIR_BBD = 'BBD';
    public const BASE_PAIR_BCH = 'BCH';
    public const BASE_PAIR_BDT = 'BDT';
    public const BASE_PAIR_BGN = 'BGN';
    public const BASE_PAIR_BHD = 'BHD';
    public const BASE_PAIR_BIF = 'BIF';
    public const BASE_PAIR_BMD = 'BMD';
    public const BASE_PAIR_BND = 'BND';
    public const BASE_PAIR_BOB = 'BOB';
    public const BASE_PAIR_BRL = 'BRL';
    public const BASE_PAIR_BSD = 'BSD';
    public const BASE_PAIR_BTC = 'BTC';
    public const BASE_PAIR_BTN = 'BTN';
    public const BASE_PAIR_BWP = 'BWP';
    public const BASE_PAIR_BYN = 'BYN';
    public const BASE_PAIR_BYR = 'BYR';
    public const BASE_PAIR_BZD = 'BZD';
    public const BASE_PAIR_CAD = 'CAD';
    public const BASE_PAIR_CDF = 'CDF';
    public const BASE_PAIR_CHF = 'CHF';
    public const BASE_PAIR_CLF = 'CLF';
    public const BASE_PAIR_CLP = 'CLP';
    public const BASE_PAIR_CNY = 'CNY';
    public const BASE_PAIR_COP = 'COP';
    public const BASE_PAIR_CRC = 'CRC';
    public const BASE_PAIR_CUC = 'CUC';
    public const BASE_PAIR_CUP = 'CUP';
    public const BASE_PAIR_CVE = 'CVE';
    public const BASE_PAIR_CZK = 'CZK';
    public const BASE_PAIR_DJF = 'DJF';
    public const BASE_PAIR_DKK = 'DKK';
    public const BASE_PAIR_DOP = 'DOP';
    public const BASE_PAIR_DOGE = 'DOGE';
    public const BASE_PAIR_DZD = 'DZD';
    public const BASE_PAIR_EGP = 'EGP';
    public const BASE_PAIR_ERN = 'ERN';
    public const BASE_PAIR_ETB = 'ETB';
    public const BASE_PAIR_ETH = 'ETH';
    public const BASE_PAIR_EUR = 'EUR';
    public const BASE_PAIR_FJD = 'FJD';
    public const BASE_PAIR_FKP = 'FKP';
    public const BASE_PAIR_FLOW = 'FLOW';
    public const BASE_PAIR_FUSD = 'FUSD';
    public const BASE_PAIR_FREE = 'FREE';
    public const BASE_PAIR_GMC = 'GMC';
    public const BASE_PAIR_GMC_BSC = 'GMC_BSC';
    public const BASE_PAIR_RMD = 'RMD';
    public const BASE_PAIR_GBP = 'GBP';
    public const BASE_PAIR_GEL = 'GEL';
    public const BASE_PAIR_GGP = 'GGP';
    public const BASE_PAIR_GHS = 'GHS';
    public const BASE_PAIR_GIP = 'GIP';
    public const BASE_PAIR_GMD = 'GMD';
    public const BASE_PAIR_GNF = 'GNF';
    public const BASE_PAIR_GTQ = 'GTQ';
    public const BASE_PAIR_GYD = 'GYD';
    public const BASE_PAIR_HKD = 'HKD';
    public const BASE_PAIR_HNL = 'HNL';
    public const BASE_PAIR_HRK = 'HRK';
    public const BASE_PAIR_HTG = 'HTG';
    public const BASE_PAIR_HUF = 'HUF';
    public const BASE_PAIR_IDR = 'IDR';
    public const BASE_PAIR_ILS = 'ILS';
    public const BASE_PAIR_IMP = 'IMP';
    public const BASE_PAIR_INR = 'INR';
    public const BASE_PAIR_IQD = 'IQD';
    public const BASE_PAIR_IRR = 'IRR';
    public const BASE_PAIR_ISK = 'ISK';
    public const BASE_PAIR_JEP = 'JEP';
    public const BASE_PAIR_JMD = 'JMD';
    public const BASE_PAIR_JOD = 'JOD';
    public const BASE_PAIR_JPY = 'JPY';
    public const BASE_PAIR_KES = 'KES';
    public const BASE_PAIR_KGS = 'KGS';
    public const BASE_PAIR_KHR = 'KHR';
    public const BASE_PAIR_KMF = 'KMF';
    public const BASE_PAIR_KPW = 'KPW';
    public const BASE_PAIR_KRW = 'KRW';
    public const BASE_PAIR_KWD = 'KWD';
    public const BASE_PAIR_KYD = 'KYD';
    public const BASE_PAIR_KZT = 'KZT';
    public const BASE_PAIR_LAK = 'LAK';
    public const BASE_PAIR_LBP = 'LBP';
    public const BASE_PAIR_LEO = 'LEO';
    public const BASE_PAIR_LINK = 'LINK';
    public const BASE_PAIR_LKR = 'LKR';
    public const BASE_PAIR_LRD = 'LRD';
    public const BASE_PAIR_LSL = 'LSL';
    public const BASE_PAIR_LTC = 'LTC';
    public const BASE_PAIR_LTL = 'LTL';
    public const BASE_PAIR_LVL = 'LVL';
    public const BASE_PAIR_LYD = 'LYD';
    public const BASE_PAIR_MAD = 'MAD';
    public const BASE_PAIR_MDL = 'MDL';
    public const BASE_PAIR_MGA = 'MGA';
    public const BASE_PAIR_MKD = 'MKD';
    public const BASE_PAIR_MKR = 'MKR';
    public const BASE_PAIR_MMK = 'MMK';
    public const BASE_PAIR_MMY = 'MMY';
    public const BASE_PAIR_MNT = 'MNT';
    public const BASE_PAIR_MOP = 'MOP';
    public const BASE_PAIR_MRO = 'MRO';
    public const BASE_PAIR_MUR = 'MUR';
    public const BASE_PAIR_MVR = 'MVR';
    public const BASE_PAIR_MWK = 'MWK';
    public const BASE_PAIR_MXN = 'MXN';
    public const BASE_PAIR_MYR = 'MYR';
    public const BASE_PAIR_MZN = 'MZN';
    public const BASE_PAIR_NAD = 'NAD';
    public const BASE_PAIR_NGN = 'NGN';
    public const BASE_PAIR_NIO = 'NIO';
    public const BASE_PAIR_NOK = 'NOK';
    public const BASE_PAIR_NPR = 'NPR';
    public const BASE_PAIR_NZD = 'NZD';
    public const BASE_PAIR_OMR = 'OMR';
    public const BASE_PAIR_PAB = 'PAB';
    public const BASE_PAIR_PAX = 'PAX';
    public const BASE_PAIR_PAXG = 'PAXG';
    public const BASE_PAIR_PEN = 'PEN';
    public const BASE_PAIR_PGK = 'PGK';
    public const BASE_PAIR_PHP = 'PHP';
    public const BASE_PAIR_PKR = 'PKR';
    public const BASE_PAIR_PLN = 'PLN';
    public const BASE_PAIR_PYG = 'PYG';
    public const BASE_PAIR_QAR = 'QAR';
    public const BASE_PAIR_RON = 'RON';
    public const BASE_PAIR_RSD = 'RSD';
    public const BASE_PAIR_RUB = 'RUB';
    public const BASE_PAIR_RWF = 'RWF';
    public const BASE_PAIR_SAR = 'SAR';
    public const BASE_PAIR_SBD = 'SBD';
    public const BASE_PAIR_SCR = 'SCR';
    public const BASE_PAIR_SDG = 'SDG';
    public const BASE_PAIR_SEK = 'SEK';
    public const BASE_PAIR_SGD = 'SGD';
    public const BASE_PAIR_SHP = 'SHP';
    public const BASE_PAIR_SLL = 'SLL';
    public const BASE_PAIR_SOS = 'SOS';
    public const BASE_PAIR_SRD = 'SRD';
    public const BASE_PAIR_STD = 'STD';
    public const BASE_PAIR_SVC = 'SVC';
    public const BASE_PAIR_SYP = 'SYP';
    public const BASE_PAIR_SZL = 'SZL';
    public const BASE_PAIR_THB = 'THB';
    public const BASE_PAIR_TJS = 'TJS';
    public const BASE_PAIR_TMT = 'TMT';
    public const BASE_PAIR_TND = 'TND';
    public const BASE_PAIR_TOP = 'TOP';
    public const BASE_PAIR__TRY = 'TRY';
    public const BASE_PAIR_TTD = 'TTD';
    public const BASE_PAIR_TRON = 'TRON';
    public const BASE_PAIR_TUSD = 'TUSD';
    public const BASE_PAIR_BUSD = 'BUSD';
    public const BASE_PAIR_TWD = 'TWD';
    public const BASE_PAIR_TZS = 'TZS';
    public const BASE_PAIR_UAH = 'UAH';
    public const BASE_PAIR_UGX = 'UGX';
    public const BASE_PAIR_UNI = 'UNI';
    public const BASE_PAIR_USD = 'USD';
    public const BASE_PAIR_USDC = 'USDC';
    public const BASE_PAIR_USDT = 'USDT';
    public const BASE_PAIR_USDT_TRON = 'USDT_TRON';
    public const BASE_PAIR_USDT_MATIC = 'USDT_MATIC';
    public const BASE_PAIR_UYU = 'UYU';
    public const BASE_PAIR_UZS = 'UZS';
    public const BASE_PAIR_VEF = 'VEF';
    public const BASE_PAIR_VND = 'VND';
    public const BASE_PAIR_VUV = 'VUV';
    public const BASE_PAIR_WBTC = 'WBTC';
    public const BASE_PAIR_WST = 'WST';
    public const BASE_PAIR_XAF = 'XAF';
    public const BASE_PAIR_XAG = 'XAG';
    public const BASE_PAIR_XAU = 'XAU';
    public const BASE_PAIR_XCD = 'XCD';
    public const BASE_PAIR_XCON = 'XCON';
    public const BASE_PAIR_XDR = 'XDR';
    public const BASE_PAIR_XLM = 'XLM';
    public const BASE_PAIR_XOF = 'XOF';
    public const BASE_PAIR_XPF = 'XPF';
    public const BASE_PAIR_XRP = 'XRP';
    public const BASE_PAIR_YER = 'YER';
    public const BASE_PAIR_ZAR = 'ZAR';
    public const BASE_PAIR_ZMK = 'ZMK';
    public const BASE_PAIR_ZMW = 'ZMW';
    public const BASE_PAIR_ZWL = 'ZWL';
    protected static $_name = "ExchangeRate";
    protected static $_definition = [
        "id" => ["id", "string", null, "getId", "setId", null, ["r" => 1, "e" => 1]], 
        "value" => ["value", "string", null, "getValue", "setValue", null, ["r" => 1]], 
        "base_pair" => ["basePair", "string", null, "getBasePair", "setBasePair", 'EUR', ["r" => 1, "e" => 1]], 
        "timestamp" => ["timestamp", "float", null, "getTimestamp", "setTimestamp", null, ["r" => 1]], 
        "source" => ["source", "string", null, "getSource", "setSource", null, ["r" => 1]]
    ];

    /**
     * ExchangeRate
     *
     * @param mixed[] $data Model data
     */
    public function __construct(array $data = []) {
        foreach(static::$_definition as $k => $v) {
            $this->_data[$k] = isset($data[$k]) ? $data[$k] : $v[5];
        }
    }

    /**
     * Get allowable values
     *
     * @return string[]
     */
    public function getIdAllowableValues(): array {
        return [
            self::ID_AED,
            self::ID_AFN,
            self::ID_ALL,
            self::ID_AMD,
            self::ID_ANG,
            self::ID_AOA,
            self::ID_ARS,
            self::ID_AUD,
            self::ID_AWG,
            self::ID_AZN,
            self::ID_BAM,
            self::ID_BAT,
            self::ID_BBD,
            self::ID_BCH,
            self::ID_BDT,
            self::ID_BGN,
            self::ID_BHD,
            self::ID_BIF,
            self::ID_BMD,
            self::ID_BND,
            self::ID_BOB,
            self::ID_BRL,
            self::ID_BSD,
            self::ID_BTC,
            self::ID_BTN,
            self::ID_BWP,
            self::ID_BYN,
            self::ID_BYR,
            self::ID_BZD,
            self::ID_CAD,
            self::ID_CDF,
            self::ID_CHF,
            self::ID_CLF,
            self::ID_CLP,
            self::ID_CNY,
            self::ID_COP,
            self::ID_CRC,
            self::ID_CUC,
            self::ID_CUP,
            self::ID_CVE,
            self::ID_CZK,
            self::ID_DJF,
            self::ID_DKK,
            self::ID_DOP,
            self::ID_DOGE,
            self::ID_DZD,
            self::ID_EGP,
            self::ID_ERN,
            self::ID_ETB,
            self::ID_ETH,
            self::ID_EUR,
            self::ID_FJD,
            self::ID_FKP,
            self::ID_FLOW,
            self::ID_FUSD,
            self::ID_FREE,
            self::ID_GMC,
            self::ID_GMC_BSC,
            self::ID_RMD,
            self::ID_GBP,
            self::ID_GEL,
            self::ID_GGP,
            self::ID_GHS,
            self::ID_GIP,
            self::ID_GMD,
            self::ID_GNF,
            self::ID_GTQ,
            self::ID_GYD,
            self::ID_HKD,
            self::ID_HNL,
            self::ID_HRK,
            self::ID_HTG,
            self::ID_HUF,
            self::ID_IDR,
            self::ID_ILS,
            self::ID_IMP,
            self::ID_INR,
            self::ID_IQD,
            self::ID_IRR,
            self::ID_ISK,
            self::ID_JEP,
            self::ID_JMD,
            self::ID_JOD,
            self::ID_JPY,
            self::ID_KES,
            self::ID_KGS,
            self::ID_KHR,
            self::ID_KMF,
            self::ID_KPW,
            self::ID_KRW,
            self::ID_KWD,
            self::ID_KYD,
            self::ID_KZT,
            self::ID_LAK,
            self::ID_LBP,
            self::ID_LEO,
            self::ID_LINK,
            self::ID_LKR,
            self::ID_LRD,
            self::ID_LSL,
            self::ID_LTC,
            self::ID_LTL,
            self::ID_LVL,
            self::ID_LYD,
            self::ID_MAD,
            self::ID_MDL,
            self::ID_MGA,
            self::ID_MKD,
            self::ID_MKR,
            self::ID_MMK,
            self::ID_MMY,
            self::ID_MNT,
            self::ID_MOP,
            self::ID_MRO,
            self::ID_MUR,
            self::ID_MVR,
            self::ID_MWK,
            self::ID_MXN,
            self::ID_MYR,
            self::ID_MZN,
            self::ID_NAD,
            self::ID_NGN,
            self::ID_NIO,
            self::ID_NOK,
            self::ID_NPR,
            self::ID_NZD,
            self::ID_OMR,
            self::ID_PAB,
            self::ID_PAX,
            self::ID_PAXG,
            self::ID_PEN,
            self::ID_PGK,
            self::ID_PHP,
            self::ID_PKR,
            self::ID_PLN,
            self::ID_PYG,
            self::ID_QAR,
            self::ID_RON,
            self::ID_RSD,
            self::ID_RUB,
            self::ID_RWF,
            self::ID_SAR,
            self::ID_SBD,
            self::ID_SCR,
            self::ID_SDG,
            self::ID_SEK,
            self::ID_SGD,
            self::ID_SHP,
            self::ID_SLL,
            self::ID_SOS,
            self::ID_SRD,
            self::ID_STD,
            self::ID_SVC,
            self::ID_SYP,
            self::ID_SZL,
            self::ID_THB,
            self::ID_TJS,
            self::ID_TMT,
            self::ID_TND,
            self::ID_TOP,
            self::ID__TRY,
            self::ID_TTD,
            self::ID_TRON,
            self::ID_TUSD,
            self::ID_BUSD,
            self::ID_TWD,
            self::ID_TZS,
            self::ID_UAH,
            self::ID_UGX,
            self::ID_UNI,
            self::ID_USD,
            self::ID_USDC,
            self::ID_USDT,
            self::ID_USDT_TRON,
            self::ID_USDT_MATIC,
            self::ID_UYU,
            self::ID_UZS,
            self::ID_VEF,
            self::ID_VND,
            self::ID_VUV,
            self::ID_WBTC,
            self::ID_WST,
            self::ID_XAF,
            self::ID_XAG,
            self::ID_XAU,
            self::ID_XCD,
            self::ID_XCON,
            self::ID_XDR,
            self::ID_XLM,
            self::ID_XOF,
            self::ID_XPF,
            self::ID_XRP,
            self::ID_YER,
            self::ID_ZAR,
            self::ID_ZMK,
            self::ID_ZMW,
            self::ID_ZWL,
        ];
    }
    /**
     * Get allowable values
     *
     * @return string[]
     */
    public function getBasePairAllowableValues(): array {
        return [
            self::BASE_PAIR_AED,
            self::BASE_PAIR_AFN,
            self::BASE_PAIR_ALL,
            self::BASE_PAIR_AMD,
            self::BASE_PAIR_ANG,
            self::BASE_PAIR_AOA,
            self::BASE_PAIR_ARS,
            self::BASE_PAIR_AUD,
            self::BASE_PAIR_AWG,
            self::BASE_PAIR_AZN,
            self::BASE_PAIR_BAM,
            self::BASE_PAIR_BAT,
            self::BASE_PAIR_BBD,
            self::BASE_PAIR_BCH,
            self::BASE_PAIR_BDT,
            self::BASE_PAIR_BGN,
            self::BASE_PAIR_BHD,
            self::BASE_PAIR_BIF,
            self::BASE_PAIR_BMD,
            self::BASE_PAIR_BND,
            self::BASE_PAIR_BOB,
            self::BASE_PAIR_BRL,
            self::BASE_PAIR_BSD,
            self::BASE_PAIR_BTC,
            self::BASE_PAIR_BTN,
            self::BASE_PAIR_BWP,
            self::BASE_PAIR_BYN,
            self::BASE_PAIR_BYR,
            self::BASE_PAIR_BZD,
            self::BASE_PAIR_CAD,
            self::BASE_PAIR_CDF,
            self::BASE_PAIR_CHF,
            self::BASE_PAIR_CLF,
            self::BASE_PAIR_CLP,
            self::BASE_PAIR_CNY,
            self::BASE_PAIR_COP,
            self::BASE_PAIR_CRC,
            self::BASE_PAIR_CUC,
            self::BASE_PAIR_CUP,
            self::BASE_PAIR_CVE,
            self::BASE_PAIR_CZK,
            self::BASE_PAIR_DJF,
            self::BASE_PAIR_DKK,
            self::BASE_PAIR_DOP,
            self::BASE_PAIR_DOGE,
            self::BASE_PAIR_DZD,
            self::BASE_PAIR_EGP,
            self::BASE_PAIR_ERN,
            self::BASE_PAIR_ETB,
            self::BASE_PAIR_ETH,
            self::BASE_PAIR_EUR,
            self::BASE_PAIR_FJD,
            self::BASE_PAIR_FKP,
            self::BASE_PAIR_FLOW,
            self::BASE_PAIR_FUSD,
            self::BASE_PAIR_FREE,
            self::BASE_PAIR_GMC,
            self::BASE_PAIR_GMC_BSC,
            self::BASE_PAIR_RMD,
            self::BASE_PAIR_GBP,
            self::BASE_PAIR_GEL,
            self::BASE_PAIR_GGP,
            self::BASE_PAIR_GHS,
            self::BASE_PAIR_GIP,
            self::BASE_PAIR_GMD,
            self::BASE_PAIR_GNF,
            self::BASE_PAIR_GTQ,
            self::BASE_PAIR_GYD,
            self::BASE_PAIR_HKD,
            self::BASE_PAIR_HNL,
            self::BASE_PAIR_HRK,
            self::BASE_PAIR_HTG,
            self::BASE_PAIR_HUF,
            self::BASE_PAIR_IDR,
            self::BASE_PAIR_ILS,
            self::BASE_PAIR_IMP,
            self::BASE_PAIR_INR,
            self::BASE_PAIR_IQD,
            self::BASE_PAIR_IRR,
            self::BASE_PAIR_ISK,
            self::BASE_PAIR_JEP,
            self::BASE_PAIR_JMD,
            self::BASE_PAIR_JOD,
            self::BASE_PAIR_JPY,
            self::BASE_PAIR_KES,
            self::BASE_PAIR_KGS,
            self::BASE_PAIR_KHR,
            self::BASE_PAIR_KMF,
            self::BASE_PAIR_KPW,
            self::BASE_PAIR_KRW,
            self::BASE_PAIR_KWD,
            self::BASE_PAIR_KYD,
            self::BASE_PAIR_KZT,
            self::BASE_PAIR_LAK,
            self::BASE_PAIR_LBP,
            self::BASE_PAIR_LEO,
            self::BASE_PAIR_LINK,
            self::BASE_PAIR_LKR,
            self::BASE_PAIR_LRD,
            self::BASE_PAIR_LSL,
            self::BASE_PAIR_LTC,
            self::BASE_PAIR_LTL,
            self::BASE_PAIR_LVL,
            self::BASE_PAIR_LYD,
            self::BASE_PAIR_MAD,
            self::BASE_PAIR_MDL,
            self::BASE_PAIR_MGA,
            self::BASE_PAIR_MKD,
            self::BASE_PAIR_MKR,
            self::BASE_PAIR_MMK,
            self::BASE_PAIR_MMY,
            self::BASE_PAIR_MNT,
            self::BASE_PAIR_MOP,
            self::BASE_PAIR_MRO,
            self::BASE_PAIR_MUR,
            self::BASE_PAIR_MVR,
            self::BASE_PAIR_MWK,
            self::BASE_PAIR_MXN,
            self::BASE_PAIR_MYR,
            self::BASE_PAIR_MZN,
            self::BASE_PAIR_NAD,
            self::BASE_PAIR_NGN,
            self::BASE_PAIR_NIO,
            self::BASE_PAIR_NOK,
            self::BASE_PAIR_NPR,
            self::BASE_PAIR_NZD,
            self::BASE_PAIR_OMR,
            self::BASE_PAIR_PAB,
            self::BASE_PAIR_PAX,
            self::BASE_PAIR_PAXG,
            self::BASE_PAIR_PEN,
            self::BASE_PAIR_PGK,
            self::BASE_PAIR_PHP,
            self::BASE_PAIR_PKR,
            self::BASE_PAIR_PLN,
            self::BASE_PAIR_PYG,
            self::BASE_PAIR_QAR,
            self::BASE_PAIR_RON,
            self::BASE_PAIR_RSD,
            self::BASE_PAIR_RUB,
            self::BASE_PAIR_RWF,
            self::BASE_PAIR_SAR,
            self::BASE_PAIR_SBD,
            self::BASE_PAIR_SCR,
            self::BASE_PAIR_SDG,
            self::BASE_PAIR_SEK,
            self::BASE_PAIR_SGD,
            self::BASE_PAIR_SHP,
            self::BASE_PAIR_SLL,
            self::BASE_PAIR_SOS,
            self::BASE_PAIR_SRD,
            self::BASE_PAIR_STD,
            self::BASE_PAIR_SVC,
            self::BASE_PAIR_SYP,
            self::BASE_PAIR_SZL,
            self::BASE_PAIR_THB,
            self::BASE_PAIR_TJS,
            self::BASE_PAIR_TMT,
            self::BASE_PAIR_TND,
            self::BASE_PAIR_TOP,
            self::BASE_PAIR__TRY,
            self::BASE_PAIR_TTD,
            self::BASE_PAIR_TRON,
            self::BASE_PAIR_TUSD,
            self::BASE_PAIR_BUSD,
            self::BASE_PAIR_TWD,
            self::BASE_PAIR_TZS,
            self::BASE_PAIR_UAH,
            self::BASE_PAIR_UGX,
            self::BASE_PAIR_UNI,
            self::BASE_PAIR_USD,
            self::BASE_PAIR_USDC,
            self::BASE_PAIR_USDT,
            self::BASE_PAIR_USDT_TRON,
            self::BASE_PAIR_USDT_MATIC,
            self::BASE_PAIR_UYU,
            self::BASE_PAIR_UZS,
            self::BASE_PAIR_VEF,
            self::BASE_PAIR_VND,
            self::BASE_PAIR_VUV,
            self::BASE_PAIR_WBTC,
            self::BASE_PAIR_WST,
            self::BASE_PAIR_XAF,
            self::BASE_PAIR_XAG,
            self::BASE_PAIR_XAU,
            self::BASE_PAIR_XCD,
            self::BASE_PAIR_XCON,
            self::BASE_PAIR_XDR,
            self::BASE_PAIR_XLM,
            self::BASE_PAIR_XOF,
            self::BASE_PAIR_XPF,
            self::BASE_PAIR_XRP,
            self::BASE_PAIR_YER,
            self::BASE_PAIR_ZAR,
            self::BASE_PAIR_ZMK,
            self::BASE_PAIR_ZMW,
            self::BASE_PAIR_ZWL,
        ];
    }

    /**
     * Get id
     *
     * @return string
     */
    public function getId(): string {
        return $this->_data["id"];
    }

    /**
     * Set id
     * 
     * @param string $id FIAT or crypto asset.
     * @throws \InvalidArgumentException
     * @return $this
     */
    public function setId(string $id) {
        return $this->_set("id", $id);
    }

    /**
     * Get value
     *
     * @return string
     */
    public function getValue(): string {
        return $this->_data["value"];
    }

    /**
     * Set value
     * 
     * @param string $value FIAT value of the asset in given base pair.
     * @throws \InvalidArgumentException
     * @return $this
     */
    public function setValue(string $value) {
        return $this->_set("value", $value);
    }

    /**
     * Get base_pair
     *
     * @return string
     */
    public function getBasePair(): string {
        return $this->_data["base_pair"];
    }

    /**
     * Set base_pair
     * 
     * @param string $base_pair Base pair.
     * @throws \InvalidArgumentException
     * @return $this
     */
    public function setBasePair(string $base_pair) {
        return $this->_set("base_pair", $base_pair);
    }

    /**
     * Get timestamp
     *
     * @return float
     */
    public function getTimestamp(): float {
        return $this->_data["timestamp"];
    }

    /**
     * Set timestamp
     * 
     * @param float $timestamp Date of validity of rate in UTC.
     * @throws \InvalidArgumentException
     * @return $this
     */
    public function setTimestamp(float $timestamp) {
        return $this->_set("timestamp", $timestamp);
    }

    /**
     * Get source
     *
     * @return string
     */
    public function getSource(): string {
        return $this->_data["source"];
    }

    /**
     * Set source
     * 
     * @param string $source Source of base pair.
     * @throws \InvalidArgumentException
     * @return $this
     */
    public function setSource(string $source) {
        return $this->_set("source", $source);
    }
}
