package com.tourvn.utils;

import java.text.DateFormat;
import java.text.SimpleDateFormat;

/**
 * Created by m on 5/28/17.
 */
public class Constants {
    public static final String DATE_FORMAT = "dd/MM/yyyy";
    public static final String DATE_FORMAT_TIME = "dd/MM/yyyy HH:mm";
    public static final String DATE_FORMAT_F = "dd_MM_yyyy";
    public static final String EXPORT_FILE_CHARGE_PACKAGE = "Bao_cao_goi_cuoc%s%s";
    public static final String EXPORT_FILE_CHARGE_PACKAGE_DETAIL = "Bao_cao_chi_tiet_goi_cuoc%s%s";
    public static final DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
    public static final String EXPORT_FILE_CALL_DIRECTION = "Bao_cao_bien_dong_doanh_thu_thoai_truc_tiep%s%s";
    public static final String EXPORT_FILE_CALL_TRANSIT = "Bao_cao_bien_dong_doanh_thu_thoai_transit%s%s";
    public static final String EXPORT_FILE_CALL_TRANSIT_DETAIL = "Bao_cao_chi_tiet_bien_dong_doanh_thu_thoai_transit%s%s";
    public static final String EXPORT_FILE_SMS_PARTNER ="Bao_cao_chi_tiet_sms_theo_partner%s%s";
    public static final String EXPORT_FILE_SMS_KPI ="Bao_cao_chi_tiet_sms_kpi%s%s";
    public static final String SUMMARY_TYPE_COUNTRY = "1";
    public static final String SUMMARY_TYPE_PARTNER = "2";
    public static final String COLUMN_DAY = "NgÃ y";
    public static final String COLUMN_TUAN = "Tuáº§n/NÄƒm";
    public static final String COLUMN_THANG = "ThÃ¡ng/NÄƒm";
    public static final String COLUMN_PARTNER = "IN Partner";
    public static final String COLUMN_TOTAL_REVENUE= "Tá»•ng doanh thu trong ngÃ y";
    public static final String COLUMN_TOTAL_ORDER= "Danh sÃ¡ch hÃ ng thÃ¡ng";
    public static final String COLUMN_FLOW_RATE="LÆ°u lÆ°á»£ng";
    public static final String COLUMN_REVENUE = "Doanh thu";
    public static final String COLUMN_FLOW_RATE_TOTAL = "Tá»•ng lÆ°u lÆ°á»£ng";
    public static final String COLUMN_REVENUE_TOTAL = "Tá»•ng doanh thu";
    public static final String EMPTY= "";
    public static final String SPACE= " ";
    public static final String TOTAL= "Tá»•ng";
    public static final String OTHER= "Other";
    public static final String CALLTYPE_TRANSIT= "TRANSIT";
    public static final String CALLTYPE_TRUC_TIEP= "TRUC_TIEP";
    public static final String COLUMN_IC_PARTNER = "IC_PARTNER";
    public static final String COLUMN_OFF_NET_NETWORK = "OFFNET_NETWORK";
    public static final String PARTNER_TYPE_IN= "IN";
    public static final String PARTNER_TYPE_OUT= "OUT";
    public static final String COLUMN_DESTINATION = "Destination";
    public static final String ALARM_CONTENT = "ALARM_CONTENT";
    public static final String ALL_SELECTED = "All";
    public static final String COLUMN_LOCAL_DATETIME = "LOCAL_DATETIME";
    public static final String COLUMN_QUANTITY = "Sáº£n lÆ°á»£ng";
    /*Send mail constant*/
    //THONG SO TAO JOB GUI MAIL
    public static final String SENDMAIL_DELAY = "sendmail.delay";
    public static final String SENDMAIL_DELAY_DEFAULT = "500";
    public static final String SENDMAIL_START_HOUR = "sendmail.startHour";
    public static final int SENDMAIL_START_HOUR_DEFAULT =  1;
    public static final String SENDMAIL_END_HOUR = "sendmail.endHour";
    public static final int SENDMAIL_END_HOUR_DEFAULT =  23;
    public static final String SENDMAIL_STATUS = "sendmail.status";
    public static final String SENDMAIL_USER_FROM = "sendmail.userFrom";
    public static final String SENDMAIL_PASSWORD_FROM = "sendmail.passwordFrom";
    public static final String SENDMAIL_USER_TO = "sendmail.userTo";
    public static final String SENDMAIL_SUBJECT= "sendmail.subject";
    public static final String SENDMAIL_FILEPATH= "sendmail.filePath";
    public static final String SENDMAIL_FONT= "sendmail.fontChart";
    public static final String SENDMAIL_SERVER= "sendmail.severNode";
    public static final String SENDMAIL_STATUS_YES = "Y";
    public static final int ORACLE_TYPES =  -10;

    public static final String IN_COUNTRY = "Trong nÆ°á»›c";
    public static final String OUT_COUNTRY = "Quá»‘c táº¿";
    public static final int IN_COUNTRY_NUM = 0;
    public static final int OUT_COUNTRY_NUM = 1;
    public static final int TOTAL_COUNTRY_NUM = -1;
    public static final String NUMBER_TOTAL = "Tá»•ng sá»‘";
    public static final String CHART_REVENUE_TITLE = "Biá»ƒu Ä‘á»“ tá»•ng há»£p biáº¿n Ä‘á»™ng doanh thu thoáº¡i trá»±c tiáº¿p";
    public static final String CHART_FLOW_RATE_TITLE = "Biá»ƒu Ä‘á»“ tá»•ng há»£p biáº¿n Ä‘á»™ng lÆ°u lÆ°á»£ng thoáº¡i trá»±c tiáº¿p";

    public static final String MAIL_TITLE_IN_PARTNER = "HÆ°á»›ng Ä‘á»‘i tÃ¡c Ä‘áº¿n Mobifone";
    public static final String MAIL_TITLE_OUT_PARTNER = "HÆ°á»›ng Mobifone Ä‘áº¿n Ä‘á»‘i tÃ¡c";
    public static final String MAIL_TITLE_FOLLOW_DIRECTION = "HÆ°á»›ng theo dÃµi(B_Number)";
    public static final String MAIL_TITLE_FOLLOW_CYCLE = "Chu ká»³ theo dÃµi";
    public static final String MAIL_TITLE_FLOW_RATE = "LÆ°u lÆ°á»£ng trong chu ká»³ theo dÃµi";
    public static final String MAIL_TITLE_ACCEPTED_THRESHOLD = "NgÆ°á»¡ng cho phÃ©p";
    public static final String MAIL_TITLE_CURRENT_RATE = "Tá»· lá»‡ sá»­ dá»¥ng";
    public static final String MAIL_TITLE_CONTENT = "Ná»™i dung cáº£nh bÃ¡o";
    public static final String MAIL_TITLE_UPDATE_DATE = "Thá»�i gian cáº­p nháº­t";
    public static final String MAIL_TITLE= "Cáº£nh bÃ¡o lÆ°u lÆ°á»£ng";
    public static final String MAIL_CONTENT_LEVEL1="Ä�á»� nghá»‹ lÆ°u Ã½";
    public static final String MAIL_CONTENT_LEVEL2="Ä�á»� nghá»‹ theo dÃµi";
    public static final String MAIL_CONTENT_LEVEL3="Ä�á»� nghá»‹ khÃ³a kÃªnh";
    public static final String EXPORT_FILE_SMS_REVENUE_OVERVIEW = "Bao_cao_bien_dong_doanh_thu_SMS%s%s";
    public static final String EXPORT_FILE_SMS_REVENUE_DTTT = "Bao_cao_bien_dong_DTTT%s%s";

    public static final String SMS_MODE_P2P = "0";
    public static final String SMS_MODE_A2P = "1";
    public static final String SMS_MT = "MT";
    public static final String SMS_MO = "MO";
    public static final String COLUMN_SMS_COUNT_TOTAL = "Tá»•ng SMS";
    public static final String COLUMN_QUANTITY_COUNT_TOTAL = "Tá»•ng sáº£n lÆ°á»£ng";
    public static final String COLUMN_BRAND_NAME = "Danh sÃ¡ch brandname";
    public static final String COLUMN_COUNTRY_NAME = "Danh sÃ¡ch Quá»‘c gia";
    public static final String COLUMN_NO = "STT";
    public static final String COLUMN_SMS_SUCCESS = "SMS thÃ nh cÃ´ng";
    public static final String COLUMN_SMS_FAILED = "SMS khÃ´ng thÃ nh cÃ´ng";
    public static final String COLUMN_TOTAL = "Tá»•ng";
    public static final String COLUMN_TOTAL_SMS_FAILED = "Tá»•ng SMS khÃ´ng thÃ nh cÃ´ng";
    public static final String COLUMN_SMS_RATE = "Tá»· lá»‡ thÃ nh cÃ´ng";
    public static final String COLUMN_SMS_COUNT="SMS Count";
    public static final String COLUMN_SMS_REVENUE = "Revenue";
    public static final String COLUMN_SMS_REVENUE_1 = "Cost";

    public static final int PAGE_SIZE_50 = 50;
    public static final int PAGE_SIZE_100 = 100;
    
    public static final String EXPORT_FILE_TKPBCP = "Bao_cao_thong_ke_pbcp%s";
    public static final String EXPORT_FILE_BAO_CAO_KIEM_KE = "Bao_cao_kiem_ke%s";
    public static final String DATA_SOURCE = "REPORT_DATA_SOURCE";
    public static final String EXPORT_FILE_THEO_DOI_LICH_SU = "Theo_doi_lich_su_cua_ccdc%s";
    public static final String EXPORT_FILE_DIEU_CHUYEN_CCDC = "Dieu_chuyen_ccdc%s";
    public static final String EXPORT_FILE_THANH_LY_CCDC = "Thanh_ly_ccdc%s";

    public static final String EXPORT_FILE_THONG_TIN_CCDC = "Thong_tin_ccdc%s";

    public static final String DATA_SOURCE_IN_ICC = "IN/ICC";
    public static final String DATA_SOURCE_IGW_SONUS = "IGW/Sonus";
    public static final String SERVICE_IDD = "Dá»‹ch vá»¥ IDD";
    public static final String SERVICE_SPECIAL = "Dá»‹ch vá»¥ Ä‘áº·c biá»‡t";
    public static final String IDD = "IDD";
    public static final String SPECIAL = "DAC_BIET";
    public static final String DESTINATIONS = "Destinations";
    public static final String COUNTRY_CODE = "Country code";
    public static final String PREFIX_CODE = "Prefix code"; 
    
    public static final String EXPORT_FILE = "Export file ccdc";
    public static final String COLUMN_SL="S/L";
    public static final String COLUMN_TL = "T/L";
    
    public static final String TOAN_MANG = "TOAN_MANG";
    public static final String QG_CHIEUDI = "QG_CHIEUDI";
    public static final String QG_CHIEUVE = "QG_CHIEUVE";
    
    public static final String EXPORT_FILE_HOPDONG_IOT = "HOP_DONG_IOT";
    
    public static final String HOPDONG_IOT_TITLE = "Biá»ƒu Ä‘á»“ vá»� má»©c Ä‘á»™ hoÃ n thÃ nh cam káº¿t";
    
    public static final String CAM_KET = "Cam káº¿t";
    
    public static final String SD_THUC_TE = "Sá»­ dá»¥ng thá»±c táº¿";
    
    public static final String EXPORT_FILE_BAO_CAO_TLSD_CVQT = "Export file BÃ¡o cÃ¡o tá»· lá»‡ sá»­ dá»¥ng chuyá»ƒn vÃ¹ng quá»‘c táº¿";
    
    public static final String EXPORT_FILE_BAO_CAO_TLSD_VTQT = "Export file BÃ¡o cÃ¡o tá»· lá»‡ sá»­ dá»¥ng vien thong quoc te";
    
    public static final String EXPORT_FILE_QUAN_LY_DS_HD_CVQT = "Export file Quáº£n lÃ½ danh sÃ¡ch há»£p Ä‘á»“ng CVQT";

    public static final String EXPORT_FILE_CHI_TIEU_THUE_BAO_PSC_OUTBOUND = "Export file Chá»‰ tiÃªu thuÃª bao PSC - BÃ¡o cÃ¡o CVQT outbound";

    public static final String EXPORT_FILE_CHI_TIEU_SAN_LUONG_OUTBOUND = "Export file Chá»‰ tiÃªu sáº£n lÆ°á»£ng - BÃ¡o cÃ¡o CVQT outbound";

    public static final String EXPORT_FILE_CHI_TIEU_DOANH_THU_OUTBOUND = "Export file Chá»‰ tiÃªu doanh thu - BÃ¡o cÃ¡o CVQT outbound";

    public static final String EXPORT_FILE_CHI_TIEU_THUE_BAO_PSC_INBOUND = "Export file Chá»‰ tiÃªu thuÃª bao PSC - BÃ¡o cÃ¡o CVQT Inbound";

    public static final String EXPORT_FILE_CHI_TIEU_SAN_LUONG_INBOUND = "Export file Chá»‰ tiÃªu sáº£n lÆ°á»£ng - BÃ¡o cÃ¡o CVQT Inbound";

    public static final String EXPORT_FILE_CHI_TIEU_DOANH_THU_INBOUND = "Export file Chá»‰ tiÃªu doanh thu - BÃ¡o cÃ¡o CVQT Inbound";

    // PTN - Bao cao giam sat traffic doi tac
    public static final String COLUMN_TIME = "Thá»�i gian";
    public static final String COLUMN_SUM_PACKOFDATA = "Tá»•ng sá»‘ gÃ³i";
    public static final String COLUMN_USED_PACKOFDATA = "Sá»‘ gÃ³i Ä‘Ã£ SD";
    public static final String COLUMN_RATIO_USED = "Tá»‰ lá»‡ sá»­ dá»¥ng";
    
    public static final String EXPORT_FILE_RP_CHECH_LECH_THU_CHI = "BAO_CAO_CHENH_LECH_THU_CHI";
    
    public static final String EXPORT_FILE_ON_OFF_NET_PARTNER = "BÃ¡o cÃ¡o onnet offnet theo Ä‘á»‘i tÃ¡c";
    
    public static final String EXPORT_FILE_BC_BDSL_TOP_SENDERID= "Bao cao bien dong san luong TOP SenderID";
    
    public static final String EXPORT_FILE_BC_BDSL_TOP_SENDERID_DETAL= "Bao cao bien dong san luong TOP SenderID chi tiáº¿t";

    public static final DateFormat df_full = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
	public static String SYSFILE_SYSTEM_UPLOAD = "SYSTEM_UPLOAD";
}
