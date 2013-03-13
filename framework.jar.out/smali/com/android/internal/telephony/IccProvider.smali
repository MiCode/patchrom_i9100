.class public Lcom/android/internal/telephony/IccProvider;
.super Landroid/content/ContentProvider;
.source "IccProvider.java"


# static fields
.field private static final ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String; = null

.field private static final ADN:I = 0x1

.field private static final ADN_CAPA_COLUMN_NAMES:[Ljava/lang/String; = null

.field private static final ADN_EMAILS:I = 0x8

.field private static final ADN_EXPANSION:I = 0xa

.field private static final ADN_FROM_CONTACTS:I = 0x5

.field private static final ADN_INIT:I = 0xb

.field private static final ADN_LIKE_CAPA_COLUMN_NAMES:[Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final EMAIL_COLUMN_NAMES:[Ljava/lang/String; = null

.field private static final FDN:I = 0x2

.field private static final FDN_FROM_CONTACTS:I = 0x6

.field private static final ICC_CAPA_INFO:I = 0x9

.field private static final MSISDN:I = 0x4

.field private static final MSISDN_FROM_CONTACTS:I = 0x7

.field private static final SDN:I = 0x3

.field private static final STR_ANRA_NUMBER:Ljava/lang/String; = "anrA_number"

.field private static final STR_ANRB_NUMBER:Ljava/lang/String; = "anrB_number"

.field private static final STR_ANRC_NUMBER:Ljava/lang/String; = "anrC_number"

.field private static final STR_ANR_NUMBER:Ljava/lang/String; = "anr_number"

.field private static final STR_EMAILS:Ljava/lang/String; = "emails"

.field private static final STR_INDEX:Ljava/lang/String; = "adn_index"

.field private static final STR_NUMBER:Ljava/lang/String; = "number"

.field private static final STR_PIN2:Ljava/lang/String; = "pin2"

.field private static final STR_TAG:Ljava/lang/String; = "tag"

.field private static final TAG:Ljava/lang/String; = "IccProvider"

.field private static final URL_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mSimulator:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 196
    const-string/jumbo v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    .line 199
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "name"

    aput-object v3, v0, v2

    const-string/jumbo v3, "number"

    aput-object v3, v0, v1

    const-string v3, "anr_number"

    aput-object v3, v0, v5

    const-string v3, "anrA_number"

    aput-object v3, v0, v6

    const-string v3, "anrB_number"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string v4, "anrC_number"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "emails"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "adn_index"

    aput-object v4, v0, v3

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    .line 212
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "emails"

    aput-object v3, v0, v2

    const-string v3, "adn_index"

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->EMAIL_COLUMN_NAMES:[Ljava/lang/String;

    .line 217
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "name_MaxCount"

    aput-object v3, v0, v2

    const-string/jumbo v3, "name_UsedCount"

    aput-object v3, v0, v1

    const-string/jumbo v3, "name_MaxLength"

    aput-object v3, v0, v5

    const-string/jumbo v3, "number_MaxCount"

    aput-object v3, v0, v6

    const-string/jumbo v3, "number_UsedCount"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string/jumbo v4, "number_MaxLength"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "email_MaxCount"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "email_UsedCount"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "email_MaxLength"

    aput-object v4, v0, v3

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->ADN_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    .line 230
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "maxCount"

    aput-object v3, v0, v2

    const-string/jumbo v2, "usedCount"

    aput-object v2, v0, v1

    const-string v2, "firstIndex"

    aput-object v2, v0, v5

    const-string/jumbo v2, "name_MaxLength"

    aput-object v2, v0, v6

    const-string/jumbo v2, "number_MaxLength"

    aput-object v2, v0, v7

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->ADN_LIKE_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    .line 261
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v0, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    .line 265
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "icc"

    const-string v3, "adn"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 266
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 267
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string/jumbo v2, "sdn"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 268
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string/jumbo v2, "msisdn"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 269
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn/from_contacts"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 270
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn/from_contacts"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 271
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string/jumbo v2, "msisdn/from_contacts"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 272
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn/emails"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 273
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "capacity"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 274
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn/expansion"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 275
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn/init"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 276
    return-void

    :cond_0
    move v0, v2

    .line 196
    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private addExpansionIccRecordToEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "anrNumber"
    .parameter "anrANumber"
    .parameter "anrBNumber"
    .parameter "anrCNumber"
    .parameter "email"
    .parameter "pin2"

    .prologue
    .line 1074
    sget-boolean v3, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addExpansionIccRecordToEfByIndex: efType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", anrNumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", anrANumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", anrBNumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", anrCNumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", email="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1076
    :cond_0
    const v1, 0xffff

    .line 1078
    .local v1, index:I
    new-instance v2, Lcom/android/internal/telephony/AdnRecord;

    const-string v3, ""

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    .local v2, newAdn:Lcom/android/internal/telephony/AdnRecord;
    iput-object p2, v2, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 1081
    iput-object p3, v2, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 1082
    iput-object p4, v2, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    .line 1083
    iput-object p5, v2, Lcom/android/internal/telephony/AdnRecord;->anrA:Ljava/lang/String;

    .line 1084
    iput-object p6, v2, Lcom/android/internal/telephony/AdnRecord;->anrB:Ljava/lang/String;

    .line 1085
    iput-object p7, v2, Lcom/android/internal/telephony/AdnRecord;->anrC:Ljava/lang/String;

    .line 1086
    iget-object v3, v2, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p8, v3, v4

    .line 1089
    :try_start_0
    const-string/jumbo v3, "simphonebook"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 1091
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_1

    .line 1092
    invoke-interface {v0, p1, v2, v1, p9}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndexUsingAR(ILcom/android/internal/telephony/AdnRecord;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1099
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    sget-boolean v3, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addExpansionIccRecordToEfByIndex: index =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1100
    :cond_2
    return v1

    .line 1096
    :catch_0
    move-exception v3

    goto :goto_0

    .line 1094
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "pin2"

    .prologue
    .line 1022
    sget-boolean v1, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addIccRecordToEf: efType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", emails="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1025
    :cond_0
    const/4 v8, 0x0

    .line 1033
    .local v8, success:Z
    :try_start_0
    const-string/jumbo v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 1035
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_1

    .line 1036
    const-string v2, ""

    const-string v3, ""

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 1044
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addIccRecordToEf: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1045
    :cond_2
    return v8

    .line 1041
    :catch_0
    move-exception v7

    .line 1042
    .local v7, ex:Ljava/lang/SecurityException;
    sget-boolean v1, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v1, :cond_1

    invoke-virtual {v7}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1039
    .end local v7           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private addIccRecordToEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "email"
    .parameter "pin2"

    .prologue
    .line 1051
    sget-boolean v1, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addIccRecordToEfByIndex: efType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", email="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1053
    :cond_0
    const v5, 0xffff

    .line 1055
    .local v5, index:I
    :try_start_0
    const-string/jumbo v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 1057
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_1

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 1058
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 1066
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addIccRecordToEfByIndex: index =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1067
    :cond_2
    return v5

    .line 1063
    :catch_0
    move-exception v7

    .line 1064
    .local v7, ex:Ljava/lang/SecurityException;
    sget-boolean v1, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v1, :cond_1

    invoke-virtual {v7}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1061
    .end local v7           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "pin2"

    .prologue
    .line 1189
    sget-boolean v1, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteIccRecordFromEf: efType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", emails="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pin2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1192
    :cond_0
    const/4 v8, 0x0

    .line 1195
    .local v8, success:Z
    :try_start_0
    const-string/jumbo v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 1197
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_1

    .line 1198
    const-string v4, ""

    const-string v5, ""

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 1206
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteIccRecordFromEf: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1207
    :cond_2
    return v8

    .line 1203
    :catch_0
    move-exception v7

    .line 1204
    .local v7, ex:Ljava/lang/SecurityException;
    sget-boolean v1, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v1, :cond_1

    invoke-virtual {v7}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1201
    .end local v7           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private deleteIccRecordFromEfByIndex(IILjava/lang/String;)I
    .locals 8
    .parameter "efType"
    .parameter "index"
    .parameter "pin2"

    .prologue
    .line 1211
    sget-boolean v1, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteIccRecordFromEfByIndex: efType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pin2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1217
    :cond_0
    :try_start_0
    const-string/jumbo v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 1220
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_1

    .line 1221
    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    move v1, p1

    move v5, p2

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 1229
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteIccRecordFromEfByIndex: index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1230
    :cond_2
    return p2

    .line 1226
    :catch_0
    move-exception v7

    .line 1227
    .local v7, ex:Ljava/lang/SecurityException;
    sget-boolean v1, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v1, :cond_1

    invoke-virtual {v7}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1224
    .end local v7           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private getAdnLikesInfo(I)Ljava/util/ArrayList;
    .locals 10
    .parameter "efType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 989
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 990
    .local v7, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    const/4 v9, 0x5

    new-array v6, v9, [I

    .line 992
    .local v6, recordInfo:[I
    :try_start_0
    const-string/jumbo v9, "simphonebook"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 994
    .local v1, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 995
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnLikesInfo(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1000
    .end local v1           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 1001
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1002
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    aget v3, v6, v9

    .line 1003
    .local v3, maxCount:I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1004
    const/4 v9, 0x1

    aget v8, v6, v9

    .line 1005
    .local v8, usedCount:I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1006
    const/4 v9, 0x2

    aget v0, v6, v9

    .line 1007
    .local v0, firstIndex:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1008
    const/4 v9, 0x3

    aget v4, v6, v9

    .line 1009
    .local v4, nameMax:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1010
    const/4 v9, 0x4

    aget v5, v6, v9

    .line 1011
    .local v5, numberMax:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1012
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1016
    .end local v0           #firstIndex:I
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3           #maxCount:I
    .end local v4           #nameMax:I
    .end local v5           #numberMax:I
    .end local v8           #usedCount:I
    :goto_1
    return-object v7

    .line 1014
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 998
    :catch_0
    move-exception v9

    goto :goto_0

    .line 997
    :catch_1
    move-exception v9

    goto :goto_0
.end method

.method private getUSIMPBCapa()Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 935
    sget-boolean v15, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v15, :cond_0

    const-string v15, "getUSIMPBCapa"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 936
    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 937
    .local v13, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    new-instance v14, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;

    invoke-direct {v14}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;-><init>()V

    .line 939
    .local v14, usimPhonebookCapaInfo:Lcom/android/internal/telephony/UsimPhonebookCapaInfo;
    :try_start_0
    const-string/jumbo v15, "simphonebook"

    invoke-static {v15}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v5

    .line 941
    .local v5, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v5, :cond_1

    .line 943
    invoke-interface {v5}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimPBCapaInfo()Lcom/android/internal/telephony/UsimPhonebookCapaInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 951
    .end local v5           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    if-eqz v14, :cond_2

    .line 952
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 953
    .local v6, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v15, 0x1

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v8

    .line 954
    .local v8, nameMaxCount:I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 955
    const/4 v15, 0x1

    const/16 v16, 0x3

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v9

    .line 956
    .local v9, nameUsedCount:I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 957
    const/4 v15, 0x1

    const/16 v16, 0x2

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v7

    .line 958
    .local v7, nameLength:I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 960
    const/4 v15, 0x2

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v11

    .line 961
    .local v11, numberMaxCount:I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 962
    const/4 v15, 0x2

    const/16 v16, 0x3

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v12

    .line 963
    .local v12, numberUsedCount:I
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 964
    const/4 v15, 0x2

    const/16 v16, 0x2

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v10

    .line 965
    .local v10, numberLength:I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 967
    const/4 v15, 0x4

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v2

    .line 968
    .local v2, emailMaxCount:I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 969
    const/4 v15, 0x4

    const/16 v16, 0x3

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v3

    .line 970
    .local v3, emailUsedCount:I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 971
    const/4 v15, 0x4

    const/16 v16, 0x2

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v1

    .line 972
    .local v1, emailLength:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 974
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 978
    .end local v1           #emailLength:I
    .end local v2           #emailMaxCount:I
    .end local v3           #emailUsedCount:I
    .end local v6           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7           #nameLength:I
    .end local v8           #nameMaxCount:I
    .end local v9           #nameUsedCount:I
    .end local v10           #numberLength:I
    .end local v11           #numberMaxCount:I
    .end local v12           #numberUsedCount:I
    :goto_1
    return-object v13

    .line 947
    :catch_0
    move-exception v4

    .line 948
    .local v4, ex:Ljava/lang/SecurityException;
    sget-boolean v15, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v15, :cond_1

    invoke-virtual {v4}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 976
    .end local v4           #ex:Ljava/lang/SecurityException;
    :cond_2
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 945
    :catch_1
    move-exception v15

    goto/16 :goto_0
.end method

.method private loadEmailRecord(Lcom/android/internal/telephony/AdnRecord;Ljava/util/ArrayList;)V
    .locals 10
    .parameter "record"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/AdnRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1318
    .local p2, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1319
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1320
    .local v2, contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v4

    .line 1321
    .local v4, emails:[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getRecordNumber()I

    move-result v0

    .line 1322
    .local v0, adnIndex:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1326
    .local v6, index:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1327
    move-object v1, v4

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v3, v1, v5

    .line 1328
    .local v3, email:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1330
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1331
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1332
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1327
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1337
    .end local v0           #adnIndex:I
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #email:Ljava/lang/String;
    .end local v4           #emails:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #index:Ljava/lang/String;
    .end local v7           #len$:I
    :cond_1
    return-void
.end method

.method private loadFromEf(IZ)Ljava/util/ArrayList;
    .locals 10
    .parameter "efType"
    .parameter "isEmailOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 855
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 856
    .local v5, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    const/4 v1, 0x0

    .line 858
    .local v1, adnRecords:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/AdnRecord;>;"
    sget-boolean v8, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadFromEf: efType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 861
    :cond_0
    :try_start_0
    const-string/jumbo v8, "simphonebook"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v4

    .line 863
    .local v4, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v4, :cond_1

    .line 864
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 865
    .local v6, start:J
    invoke-interface {v4, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEf(I)Ljava/util/List;

    move-result-object v1

    .line 866
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 874
    .end local v4           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v6           #start:J
    :cond_1
    :goto_0
    if-eqz v1, :cond_4

    .line 877
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 878
    .local v0, N:I
    sget-boolean v8, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adnRecords.size="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 879
    :cond_2
    if-nez p2, :cond_3

    .line 880
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_5

    .line 881
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/AdnRecord;

    invoke-direct {p0, v8, v5}, Lcom/android/internal/telephony/IccProvider;->loadRecord(Lcom/android/internal/telephony/AdnRecord;Ljava/util/ArrayList;)V

    .line 880
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 871
    .end local v0           #N:I
    .end local v3           #i:I
    :catch_0
    move-exception v2

    .line 872
    .local v2, ex:Ljava/lang/SecurityException;
    sget-boolean v8, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v8, :cond_1

    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 884
    .end local v2           #ex:Ljava/lang/SecurityException;
    .restart local v0       #N:I
    :cond_3
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    if-ge v3, v0, :cond_5

    .line 885
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/AdnRecord;

    invoke-direct {p0, v8, v5}, Lcom/android/internal/telephony/IccProvider;->loadEmailRecord(Lcom/android/internal/telephony/AdnRecord;Ljava/util/ArrayList;)V

    .line 884
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 891
    .end local v0           #N:I
    .end local v3           #i:I
    :cond_4
    const-string v8, "IccProvider"

    const-string v9, "Cannot load ADN records"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 894
    :cond_5
    sget-boolean v8, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v8, :cond_6

    const-string v8, "loadFromEf: return results"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 895
    :cond_6
    return-object v5

    .line 869
    :catch_1
    move-exception v8

    goto :goto_0
.end method

.method private loadFromEfInit(I)Ljava/util/ArrayList;
    .locals 7
    .parameter "efType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 899
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 900
    .local v4, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    const/4 v1, 0x0

    .line 902
    .local v1, adnRecords:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/AdnRecord;>;"
    sget-boolean v5, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadFromEf: efType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 905
    :cond_0
    :try_start_0
    const-string/jumbo v5, "simphonebook"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v3

    .line 907
    .local v3, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v3, :cond_1

    .line 908
    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEfInit(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 915
    .end local v3           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    .line 918
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 919
    .local v0, N:I
    sget-boolean v5, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adnRecords.size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 920
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 921
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/AdnRecord;

    invoke-direct {p0, v5, v4}, Lcom/android/internal/telephony/IccProvider;->loadRecord(Lcom/android/internal/telephony/AdnRecord;Ljava/util/ArrayList;)V

    .line 920
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 926
    .end local v0           #N:I
    .end local v2           #i:I
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 929
    :cond_4
    return-object v4

    .line 912
    :catch_0
    move-exception v5

    goto :goto_0

    .line 910
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method private loadRecord(Lcom/android/internal/telephony/AdnRecord;Ljava/util/ArrayList;)V
    .locals 18
    .parameter "record"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/AdnRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1243
    .local p2, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_7

    .line 1244
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1245
    .local v8, contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v6

    .line 1246
    .local v6, alphaTag:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v15

    .line 1247
    .local v15, number:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v4

    .line 1248
    .local v4, ANRNumber:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getAnrA()Ljava/lang/String;

    move-result-object v1

    .line 1249
    .local v1, ANRANumber:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getAnrB()Ljava/lang/String;

    move-result-object v2

    .line 1250
    .local v2, ANRBNumber:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getAnrC()Ljava/lang/String;

    move-result-object v3

    .line 1251
    .local v3, ANRCNumber:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v11

    .line 1252
    .local v11, emails:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getRecordNumber()I

    move-result v5

    .line 1253
    .local v5, adnIndex:I
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1257
    .local v13, index:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 1258
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1262
    :goto_0
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 1263
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1267
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 1268
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1272
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 1273
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1277
    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 1278
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1282
    :goto_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_5

    .line 1283
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1288
    :goto_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1290
    .local v10, emailString:Ljava/lang/StringBuilder;
    if-eqz v11, :cond_8

    .line 1291
    move-object v7, v11

    .local v7, arr$:[Ljava/lang/String;
    array-length v14, v7

    .local v14, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_6
    if-ge v12, v14, :cond_6

    aget-object v9, v7, v12

    .line 1293
    .local v9, email:Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1294
    const-string v16, ","

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1291
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 1260
    .end local v7           #arr$:[Ljava/lang/String;
    .end local v9           #email:Ljava/lang/String;
    .end local v10           #emailString:Ljava/lang/StringBuilder;
    .end local v12           #i$:I
    .end local v14           #len$:I
    :cond_0
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1265
    :cond_1
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1270
    :cond_2
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1275
    :cond_3
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1280
    :cond_4
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1285
    :cond_5
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1296
    .restart local v7       #arr$:[Ljava/lang/String;
    .restart local v10       #emailString:Ljava/lang/StringBuilder;
    .restart local v12       #i$:I
    .restart local v14       #len$:I
    :cond_6
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1300
    .end local v7           #arr$:[Ljava/lang/String;
    .end local v12           #i$:I
    .end local v14           #len$:I
    :goto_7
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1301
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1303
    .end local v1           #ANRANumber:Ljava/lang/String;
    .end local v2           #ANRBNumber:Ljava/lang/String;
    .end local v3           #ANRCNumber:Ljava/lang/String;
    .end local v4           #ANRNumber:Ljava/lang/String;
    .end local v5           #adnIndex:I
    .end local v6           #alphaTag:Ljava/lang/String;
    .end local v8           #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10           #emailString:Ljava/lang/StringBuilder;
    .end local v11           #emails:[Ljava/lang/String;
    .end local v13           #index:Ljava/lang/String;
    .end local v15           #number:Ljava/lang/String;
    :cond_7
    return-void

    .line 1298
    .restart local v1       #ANRANumber:Ljava/lang/String;
    .restart local v2       #ANRBNumber:Ljava/lang/String;
    .restart local v3       #ANRCNumber:Ljava/lang/String;
    .restart local v4       #ANRNumber:Ljava/lang/String;
    .restart local v5       #adnIndex:I
    .restart local v6       #alphaTag:Ljava/lang/String;
    .restart local v8       #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10       #emailString:Ljava/lang/StringBuilder;
    .restart local v11       #emails:[Ljava/lang/String;
    .restart local v13       #index:Ljava/lang/String;
    .restart local v15       #number:Ljava/lang/String;
    :cond_8
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1306
    const-string v0, "IccProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccProvider] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    return-void
.end method

.method private normalizeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "inVal"

    .prologue
    const/16 v3, 0x27

    .line 589
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 590
    .local v0, len:I
    move-object v1, p1

    .line 592
    .local v1, retVal:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    .line 593
    const/4 v2, 0x1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 596
    :cond_0
    return-object v1
.end method

.method private updateExpansionIccRecordInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 5
    .parameter "efType"
    .parameter "newName"
    .parameter "newNumber"
    .parameter "newAnrNumber"
    .parameter "newAnrANumber"
    .parameter "newAnrBNumber"
    .parameter "newAnrCNumber"
    .parameter "newEmail"
    .parameter "index"
    .parameter "pin2"

    .prologue
    .line 1155
    sget-boolean v3, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateExpansionIccRecordInEfByIndex: efType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", index ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newname="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newnumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newanrnumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newanrAnumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newanrBnumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newanrCnumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1160
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/AdnRecord;

    const-string v3, ""

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    .local v2, newAdn:Lcom/android/internal/telephony/AdnRecord;
    iput-object p2, v2, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 1163
    iput-object p3, v2, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 1164
    iput-object p4, v2, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    .line 1165
    iput-object p5, v2, Lcom/android/internal/telephony/AdnRecord;->anrA:Ljava/lang/String;

    .line 1166
    iput-object p6, v2, Lcom/android/internal/telephony/AdnRecord;->anrB:Ljava/lang/String;

    .line 1167
    iput-object p7, v2, Lcom/android/internal/telephony/AdnRecord;->anrC:Ljava/lang/String;

    .line 1168
    iget-object v3, v2, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p8, v3, v4

    .line 1171
    :try_start_0
    const-string/jumbo v3, "simphonebook"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 1173
    .local v1, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEf(I)Ljava/util/List;

    .line 1174
    if-eqz v1, :cond_1

    .line 1175
    invoke-interface {v1, p1, v2, p9, p10}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndexUsingAR(ILcom/android/internal/telephony/AdnRecord;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p9

    .line 1182
    .end local v1           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    sget-boolean v3, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateExpansionIccRecordInEfByIndex: index =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1183
    :cond_2
    return p9

    .line 1179
    :catch_0
    move-exception v0

    .line 1180
    .local v0, ex:Ljava/lang/SecurityException;
    sget-boolean v3, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1177
    .end local v0           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "efType"
    .parameter "oldName"
    .parameter "oldNumber"
    .parameter "newName"
    .parameter "newNumber"
    .parameter "pin2"

    .prologue
    .line 1106
    sget-boolean v1, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateIccRecordInEf: efType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", oldname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", oldnumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newnumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1109
    :cond_0
    const/4 v8, 0x0

    .line 1112
    .local v8, success:Z
    :try_start_0
    const-string/jumbo v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 1114
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_1

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 1115
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 1123
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateIccRecordInEf: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1124
    :cond_2
    return v8

    .line 1120
    :catch_0
    move-exception v7

    .line 1121
    .local v7, ex:Ljava/lang/SecurityException;
    sget-boolean v1, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v1, :cond_1

    invoke-virtual {v7}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1118
    .end local v7           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private updateIccRecordInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 8
    .parameter "efType"
    .parameter "newName"
    .parameter "newNumber"
    .parameter "newEmail"
    .parameter "index"
    .parameter "pin2"

    .prologue
    .line 1131
    sget-boolean v1, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateIccRecordInEfByIndex: efType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newnumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1135
    :cond_0
    :try_start_0
    const-string/jumbo v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 1137
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_1

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 1138
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p5

    .line 1146
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateIccRecordInEfByIndex: index =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1147
    :cond_2
    return p5

    .line 1143
    :catch_0
    move-exception v7

    .line 1144
    .local v7, ex:Ljava/lang/SecurityException;
    sget-boolean v1, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v1, :cond_1

    invoke-virtual {v7}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1141
    .end local v7           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 21
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 602
    const/4 v8, -0x1

    .line 603
    .local v8, index:I
    const/4 v9, 0x0

    .line 604
    .local v9, isFromContacts:Z
    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "delete"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 606
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v11

    .line 607
    .local v11, match:I
    packed-switch v11, :pswitch_data_0

    .line 636
    :pswitch_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Cannot insert into URL: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 609
    :pswitch_1
    const/16 v3, 0x6f3a

    .line 641
    .local v3, efType:I
    :goto_0
    const/4 v4, 0x0

    .line 642
    .local v4, tag:Ljava/lang/String;
    const/4 v5, 0x0

    .line 643
    .local v5, number:Ljava/lang/String;
    const/4 v6, 0x0

    .line 644
    .local v6, emails:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 646
    .local v7, pin2:Ljava/lang/String;
    const-string v2, "AND"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 647
    .local v17, tokens:[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v12, v0

    .line 649
    .local v12, n:I
    :cond_1
    :goto_1
    add-int/lit8 v12, v12, -0x1

    if-ltz v12, :cond_b

    .line 650
    aget-object v14, v17, v12

    .line 651
    .local v14, param:Ljava/lang/String;
    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "parsing \'"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v19, "\'"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 653
    :cond_2
    const-string v2, "="

    invoke-virtual {v14, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 654
    .local v13, pair:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v13, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 655
    .local v10, key:Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v13, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    .line 657
    .local v18, val:Ljava/lang/String;
    array-length v2, v13

    const/16 v19, 0x2

    move/from16 v0, v19

    if-eq v2, v0, :cond_3

    .line 658
    const-string/jumbo v2, "tag"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 660
    const-string v2, "="

    invoke-virtual {v14, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v14, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    .line 661
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    .line 668
    :cond_3
    const-string/jumbo v2, "tag"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 669
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 670
    const-string/jumbo v2, "null"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 671
    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "Change null"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 672
    :cond_4
    const-string v4, ""

    goto/16 :goto_1

    .line 613
    .end local v3           #efType:I
    .end local v4           #tag:Ljava/lang/String;
    .end local v5           #number:Ljava/lang/String;
    .end local v6           #emails:[Ljava/lang/String;
    .end local v7           #pin2:Ljava/lang/String;
    .end local v10           #key:Ljava/lang/String;
    .end local v12           #n:I
    .end local v13           #pair:[Ljava/lang/String;
    .end local v14           #param:Ljava/lang/String;
    .end local v17           #tokens:[Ljava/lang/String;
    .end local v18           #val:Ljava/lang/String;
    :pswitch_2
    const/16 v3, 0x6f3b

    .line 614
    .restart local v3       #efType:I
    goto/16 :goto_0

    .line 617
    .end local v3           #efType:I
    :pswitch_3
    const/16 v3, 0x6f40

    .line 618
    .restart local v3       #efType:I
    goto/16 :goto_0

    .line 621
    .end local v3           #efType:I
    :pswitch_4
    const/16 v3, 0x6f3a

    .line 622
    .restart local v3       #efType:I
    const/4 v9, 0x1

    .line 623
    goto/16 :goto_0

    .line 626
    .end local v3           #efType:I
    :pswitch_5
    const/16 v3, 0x6f3b

    .line 627
    .restart local v3       #efType:I
    const/4 v9, 0x1

    .line 628
    goto/16 :goto_0

    .line 631
    .end local v3           #efType:I
    :pswitch_6
    const/16 v3, 0x6f40

    .line 632
    .restart local v3       #efType:I
    const/4 v9, 0x1

    .line 633
    goto/16 :goto_0

    .line 663
    .restart local v4       #tag:Ljava/lang/String;
    .restart local v5       #number:Ljava/lang/String;
    .restart local v6       #emails:[Ljava/lang/String;
    .restart local v7       #pin2:Ljava/lang/String;
    .restart local v10       #key:Ljava/lang/String;
    .restart local v12       #n:I
    .restart local v13       #pair:[Ljava/lang/String;
    .restart local v14       #param:Ljava/lang/String;
    .restart local v17       #tokens:[Ljava/lang/String;
    .restart local v18       #val:Ljava/lang/String;
    :cond_5
    const-string v2, "IccProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "resolve: bad whereClause parameter: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 674
    :cond_6
    const-string/jumbo v2, "number"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 675
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 676
    const-string/jumbo v2, "null"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 677
    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_7

    const-string v2, "Change null"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 678
    :cond_7
    const-string v5, ""

    goto/16 :goto_1

    .line 681
    :cond_8
    const-string v2, "emails"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 683
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 684
    :cond_9
    const-string/jumbo v2, "pin2"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 685
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 686
    :cond_a
    const-string v2, "adn_index"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 687
    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-int v8, v0

    goto/16 :goto_1

    .line 697
    .end local v10           #key:Ljava/lang/String;
    .end local v13           #pair:[Ljava/lang/String;
    .end local v14           #param:Ljava/lang/String;
    .end local v18           #val:Ljava/lang/String;
    :cond_b
    const/16 v2, 0x6f3b

    if-ne v3, v2, :cond_c

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 698
    const/4 v15, 0x0

    .line 717
    :goto_2
    return v15

    .line 702
    :cond_c
    if-gez v8, :cond_10

    .line 704
    if-nez v4, :cond_d

    .line 705
    const-string v4, ""

    .line 706
    :cond_d
    if-nez v5, :cond_e

    .line 707
    const-string v5, ""

    :cond_e
    move-object/from16 v2, p0

    .line 708
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/IccProvider;->deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    .line 709
    .local v16, success:Z
    if-nez v16, :cond_f

    .line 710
    const/4 v15, 0x0

    goto :goto_2

    .line 712
    :cond_f
    const/4 v15, 0x1

    goto :goto_2

    .line 716
    .end local v16           #success:Z
    :cond_10
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8, v7}, Lcom/android/internal/telephony/IccProvider;->deleteIccRecordFromEfByIndex(IILjava/lang/String;)I

    move-result v15

    .line 717
    .local v15, ret_index:I
    goto :goto_2

    .line 607
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 412
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 419
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :pswitch_0
    const-string/jumbo v0, "vnd.android.cursor.dir/sim-contact"

    return-object v0

    .line 412
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 26
    .parameter "url"
    .parameter "initialValues"

    .prologue
    .line 427
    const/4 v11, 0x0

    .line 428
    .local v11, pin2:Ljava/lang/String;
    const/16 v22, 0x0

    .line 429
    .local v22, isFromContacts:Z
    const/16 v18, 0x0

    .line 430
    .local v18, AdnExpansion:Z
    const/16 v25, 0x0

    .line 433
    .local v25, success:Z
    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "insert"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 435
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v23

    .line 436
    .local v23, match:I
    packed-switch v23, :pswitch_data_0

    .line 473
    :pswitch_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot insert into URL: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v2, v12}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 438
    :pswitch_1
    const/16 v3, 0x6f3a

    .line 477
    .local v3, efType:I
    :goto_0
    const-string/jumbo v2, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 478
    .local v4, tag:Ljava/lang/String;
    const-string/jumbo v2, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 479
    .local v5, number:Ljava/lang/String;
    const/4 v6, 0x0

    .line 480
    .local v6, AnrNumber:Ljava/lang/String;
    const/4 v7, 0x0

    .line 481
    .local v7, AnrANumber:Ljava/lang/String;
    const/4 v8, 0x0

    .line 482
    .local v8, AnrBNumber:Ljava/lang/String;
    const/4 v9, 0x0

    .line 483
    .local v9, AnrCNumber:Ljava/lang/String;
    const/4 v10, 0x0

    .line 484
    .local v10, email:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v20, v0

    .line 485
    .local v20, emails:[Ljava/lang/String;
    const-string v2, "AnrNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 486
    const-string v2, "AnrNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 488
    :cond_1
    const-string v2, "AnrANumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 489
    const-string v2, "AnrANumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 491
    :cond_2
    const-string v2, "AnrBNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 492
    const-string v2, "AnrBNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 494
    :cond_3
    const-string v2, "AnrCNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 495
    const-string v2, "AnrCNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 497
    :cond_4
    const-string v2, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 498
    const-string v2, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 499
    const/4 v2, 0x0

    const-string v12, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v20, v2

    .line 500
    const/4 v2, 0x0

    aget-object v2, v20, v2

    if-nez v2, :cond_5

    .line 501
    const/4 v2, 0x0

    const-string v12, ""

    aput-object v12, v20, v2

    .line 504
    :cond_5
    if-nez v4, :cond_6

    .line 505
    const-string v4, ""

    .line 506
    :cond_6
    if-nez v5, :cond_7

    .line 507
    const-string v5, ""

    .line 508
    :cond_7
    if-nez v10, :cond_8

    .line 509
    const-string v10, ""

    .line 510
    :cond_8
    if-nez v6, :cond_9

    .line 511
    const-string v6, ""

    .line 512
    :cond_9
    if-nez v7, :cond_a

    .line 513
    const-string v7, ""

    .line 514
    :cond_a
    if-nez v8, :cond_b

    .line 515
    const-string v8, ""

    .line 516
    :cond_b
    if-nez v9, :cond_c

    .line 517
    const-string v9, ""

    .line 518
    :cond_c
    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "insert name : "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 521
    :cond_d
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v2, "content://icc/"

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 522
    .local v19, buf:Ljava/lang/StringBuilder;
    if-eqz v22, :cond_f

    .line 523
    const-string v2, "isFromContacts"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 524
    if-eqz v18, :cond_e

    .line 526
    const-string v2, "Insert AdnExpansion"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    move-object/from16 v2, p0

    .line 527
    invoke-direct/range {v2 .. v11}, Lcom/android/internal/telephony/IccProvider;->addExpansionIccRecordToEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    .line 528
    .local v21, index:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "After InsertExpansion, index : "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 535
    :goto_1
    packed-switch v23, :pswitch_data_1

    .line 543
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " insert ["

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, "]"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 544
    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 577
    .end local v21           #index:I
    :goto_3
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    .line 585
    :goto_4
    return-object v24

    .line 442
    .end local v3           #efType:I
    .end local v4           #tag:Ljava/lang/String;
    .end local v5           #number:Ljava/lang/String;
    .end local v6           #AnrNumber:Ljava/lang/String;
    .end local v7           #AnrANumber:Ljava/lang/String;
    .end local v8           #AnrBNumber:Ljava/lang/String;
    .end local v9           #AnrCNumber:Ljava/lang/String;
    .end local v10           #email:Ljava/lang/String;
    .end local v19           #buf:Ljava/lang/StringBuilder;
    .end local v20           #emails:[Ljava/lang/String;
    :pswitch_2
    const/16 v3, 0x6f3b

    .line 443
    .restart local v3       #efType:I
    const-string/jumbo v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 444
    goto/16 :goto_0

    .line 447
    .end local v3           #efType:I
    :pswitch_3
    const/16 v3, 0x6f3a

    .line 448
    .restart local v3       #efType:I
    const/16 v18, 0x1

    .line 449
    const/16 v22, 0x1

    .line 450
    goto/16 :goto_0

    .line 453
    .end local v3           #efType:I
    :pswitch_4
    const/16 v3, 0x6f40

    .line 454
    .restart local v3       #efType:I
    goto/16 :goto_0

    .line 457
    .end local v3           #efType:I
    :pswitch_5
    const/16 v3, 0x6f3a

    .line 458
    .restart local v3       #efType:I
    const/16 v22, 0x1

    .line 459
    goto/16 :goto_0

    .line 462
    .end local v3           #efType:I
    :pswitch_6
    const/16 v3, 0x6f3b

    .line 463
    .restart local v3       #efType:I
    const-string/jumbo v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 464
    const/16 v22, 0x1

    .line 465
    goto/16 :goto_0

    .line 468
    .end local v3           #efType:I
    :pswitch_7
    const/16 v3, 0x6f40

    .line 469
    .restart local v3       #efType:I
    const/16 v22, 0x1

    .line 470
    goto/16 :goto_0

    .line 530
    .restart local v4       #tag:Ljava/lang/String;
    .restart local v5       #number:Ljava/lang/String;
    .restart local v6       #AnrNumber:Ljava/lang/String;
    .restart local v7       #AnrANumber:Ljava/lang/String;
    .restart local v8       #AnrBNumber:Ljava/lang/String;
    .restart local v9       #AnrCNumber:Ljava/lang/String;
    .restart local v10       #email:Ljava/lang/String;
    .restart local v19       #buf:Ljava/lang/StringBuilder;
    .restart local v20       #emails:[Ljava/lang/String;
    :cond_e
    const-string v2, "Insert Adn"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    move-object/from16 v12, p0

    move v13, v3

    move-object v14, v4

    move-object v15, v5

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    .line 531
    invoke-direct/range {v12 .. v17}, Lcom/android/internal/telephony/IccProvider;->addIccRecordToEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    .line 532
    .restart local v21       #index:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "After InsertAdn, index : "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 537
    :pswitch_8
    const-string v2, "[hypathia] insert :ADN_FROM_CONTACTS"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 538
    const-string v2, "adn/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 546
    .end local v21           #index:I
    :cond_f
    const-string v2, "Insert Adn"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 547
    const/16 v16, 0x0

    move-object/from16 v12, p0

    move v13, v3

    move-object v14, v4

    move-object v15, v5

    move-object/from16 v17, v11

    invoke-direct/range {v12 .. v17}, Lcom/android/internal/telephony/IccProvider;->addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v25

    .line 548
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "After InsertAdn:"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 550
    if-nez v25, :cond_10

    .line 551
    const-string/jumbo v2, "success false"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 552
    const/16 v24, 0x0

    goto/16 :goto_4

    .line 555
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Match Val:"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 556
    packed-switch v23, :pswitch_data_2

    .line 571
    :goto_5
    :pswitch_9
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 558
    :pswitch_a
    const-string v2, "adn/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 562
    :pswitch_b
    const-string v2, "fdn/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 566
    :pswitch_c
    const-string/jumbo v2, "msisdn/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 436
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 535
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_8
    .end packed-switch

    .line 556
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_a
        :pswitch_b
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 283
    const-string/jumbo v1, "ro.product.device"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, device:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/IccProvider;->mSimulator:Z

    .line 291
    :goto_0
    return v2

    .line 288
    :cond_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccProvider;->mSimulator:Z

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14
    .parameter "url"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 299
    iget-boolean v11, p0, Lcom/android/internal/telephony/IccProvider;->mSimulator:Z

    if-nez v11, :cond_4

    .line 300
    sget-object v11, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v11, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 379
    :pswitch_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown URL "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 302
    :pswitch_1
    const/16 v11, 0x6f3a

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IZ)Ljava/util/ArrayList;

    move-result-object v9

    .line 407
    .local v9, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :goto_0
    new-instance v11, Lcom/android/internal/telephony/ArrayListCursor;

    sget-object v12, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v11, v12, v9}, Lcom/android/internal/telephony/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    :goto_1
    return-object v11

    .line 306
    .end local v9           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :pswitch_2
    const/16 v11, 0x6f3b

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IZ)Ljava/util/ArrayList;

    move-result-object v9

    .line 307
    .restart local v9       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    goto :goto_0

    .line 310
    .end local v9           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :pswitch_3
    const/16 v11, 0x6f49

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IZ)Ljava/util/ArrayList;

    move-result-object v9

    .line 311
    .restart local v9       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    goto :goto_0

    .line 314
    .end local v9           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :pswitch_4
    const/16 v11, 0x6f3a

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/IccProvider;->loadFromEfInit(I)Ljava/util/ArrayList;

    move-result-object v9

    .line 315
    .restart local v9       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    goto :goto_0

    .line 318
    .end local v9           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :pswitch_5
    const/16 v11, 0x6f40

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IZ)Ljava/util/ArrayList;

    move-result-object v9

    .line 319
    .restart local v9       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    goto :goto_0

    .line 322
    .end local v9           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :pswitch_6
    const/16 v11, 0x6f3a

    const/4 v12, 0x1

    invoke-direct {p0, v11, v12}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IZ)Ljava/util/ArrayList;

    move-result-object v9

    .line 323
    .restart local v9       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    new-instance v11, Lcom/android/internal/telephony/ArrayListCursor;

    sget-object v12, Lcom/android/internal/telephony/IccProvider;->EMAIL_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v11, v12, v9}, Lcom/android/internal/telephony/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 330
    .end local v9           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :pswitch_7
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 331
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown URL "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 333
    :cond_0
    const-string v11, "="

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 334
    .local v8, pair:[Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v11, v8, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 335
    .local v7, key:Ljava/lang/String;
    const/4 v11, 0x1

    aget-object v11, v8, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 337
    .local v10, value:Ljava/lang/String;
    const-string v11, "EF_TYPE"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 338
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 339
    .local v6, efType:I
    sparse-switch v6, :sswitch_data_0

    .line 368
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown URL "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 342
    :sswitch_0
    const-string/jumbo v2, "ril.ICC_TYPE"

    .line 343
    .local v2, ICCTYPE:Ljava/lang/String;
    const-string v4, "1"

    .line 344
    .local v4, TWOG:Ljava/lang/String;
    const-string v3, "2"

    .line 345
    .local v3, THREEG:Ljava/lang/String;
    const-string/jumbo v11, "ril.ICC_TYPE"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 346
    .local v1, ADNTYPE:Ljava/lang/String;
    const-string v11, "1"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 347
    const/16 v11, 0x6f3a

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/IccProvider;->getAdnLikesInfo(I)Ljava/util/ArrayList;

    move-result-object v9

    .line 348
    .restart local v9       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    new-instance v11, Lcom/android/internal/telephony/ArrayListCursor;

    sget-object v12, Lcom/android/internal/telephony/IccProvider;->ADN_LIKE_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v11, v12, v9}, Lcom/android/internal/telephony/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 349
    .end local v9           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :cond_1
    const-string v11, "2"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 350
    invoke-direct {p0}, Lcom/android/internal/telephony/IccProvider;->getUSIMPBCapa()Ljava/util/ArrayList;

    move-result-object v9

    .line 351
    .restart local v9       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    new-instance v11, Lcom/android/internal/telephony/ArrayListCursor;

    sget-object v12, Lcom/android/internal/telephony/IccProvider;->ADN_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v11, v12, v9}, Lcom/android/internal/telephony/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 356
    .end local v1           #ADNTYPE:Ljava/lang/String;
    .end local v2           #ICCTYPE:Ljava/lang/String;
    .end local v3           #THREEG:Ljava/lang/String;
    .end local v4           #TWOG:Ljava/lang/String;
    .end local v9           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :cond_2
    :sswitch_1
    const/16 v11, 0x6f3b

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/IccProvider;->getAdnLikesInfo(I)Ljava/util/ArrayList;

    move-result-object v9

    .line 357
    .restart local v9       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    new-instance v11, Lcom/android/internal/telephony/ArrayListCursor;

    sget-object v12, Lcom/android/internal/telephony/IccProvider;->ADN_LIKE_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v11, v12, v9}, Lcom/android/internal/telephony/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 360
    .end local v9           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :sswitch_2
    const/16 v11, 0x6f49

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/IccProvider;->getAdnLikesInfo(I)Ljava/util/ArrayList;

    move-result-object v9

    .line 361
    .restart local v9       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    new-instance v11, Lcom/android/internal/telephony/ArrayListCursor;

    sget-object v12, Lcom/android/internal/telephony/IccProvider;->ADN_LIKE_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v11, v12, v9}, Lcom/android/internal/telephony/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 364
    .end local v9           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :sswitch_3
    const/16 v11, 0x6f40

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/IccProvider;->getAdnLikesInfo(I)Ljava/util/ArrayList;

    move-result-object v9

    .line 365
    .restart local v9       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    new-instance v11, Lcom/android/internal/telephony/ArrayListCursor;

    sget-object v12, Lcom/android/internal/telephony/IccProvider;->ADN_LIKE_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v11, v12, v9}, Lcom/android/internal/telephony/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 373
    .end local v6           #efType:I
    .end local v9           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :cond_3
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown URL "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 383
    .end local v7           #key:Ljava/lang/String;
    .end local v8           #pair:[Ljava/lang/String;
    .end local v10           #value:Ljava/lang/String;
    :cond_4
    new-instance v9, Ljava/util/ArrayList;

    const/4 v11, 0x4

    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 386
    .restart local v9       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .local v5, contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v11, "Ron Stevens/H"

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    const-string v11, "512-555-5038"

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .restart local v5       #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v11, "Ron Stevens/M"

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    const-string v11, "512-555-8305"

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 397
    .restart local v5       #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v11, "Melissa Owens"

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    const-string v11, "512-555-8305"

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 402
    .restart local v5       #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v11, "Directory Assistence"

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    const-string v11, "411"

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 300
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 339
    :sswitch_data_0
    .sparse-switch
        0x6f3a -> :sswitch_0
        0x6f3b -> :sswitch_1
        0x6f40 -> :sswitch_3
        0x6f49 -> :sswitch_2
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 25
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 726
    const/4 v11, 0x0

    .line 727
    .local v11, pin2:Ljava/lang/String;
    const/4 v10, -0x1

    .line 728
    .local v10, index:I
    const/16 v21, 0x0

    .line 729
    .local v21, isFromContacts:Z
    const/16 v19, 0x0

    .line 730
    .local v19, AdnExpansion:Z
    const/16 v24, 0x0

    .line 731
    .local v24, success:Z
    sget-boolean v1, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "update"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 733
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v22

    .line 734
    .local v22, match:I
    packed-switch v22, :pswitch_data_0

    .line 771
    :pswitch_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot insert into URL: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 736
    :pswitch_1
    const/16 v2, 0x6f3a

    .line 775
    .local v2, efType:I
    :goto_0
    const-string/jumbo v1, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 776
    .local v14, tag:Ljava/lang/String;
    const-string/jumbo v1, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 777
    .local v15, number:Ljava/lang/String;
    const/16 v20, 0x0

    .line 778
    .local v20, emails:[Ljava/lang/String;
    const-string/jumbo v1, "newTag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 779
    .local v3, newTag:Ljava/lang/String;
    const-string/jumbo v1, "newNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 780
    .local v4, newNumber:Ljava/lang/String;
    const/4 v5, 0x0

    .line 781
    .local v5, newAnrNumber:Ljava/lang/String;
    const/4 v6, 0x0

    .line 782
    .local v6, newAnrANumber:Ljava/lang/String;
    const/4 v7, 0x0

    .line 783
    .local v7, newAnrBNumber:Ljava/lang/String;
    const/4 v8, 0x0

    .line 785
    .local v8, newAnrCNumber:Ljava/lang/String;
    const/16 v23, 0x0

    .line 787
    .local v23, newEmails:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 789
    .local v9, email:Ljava/lang/String;
    const-string/jumbo v1, "newAnrNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 790
    const-string/jumbo v1, "newAnrNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 792
    :cond_1
    const-string/jumbo v1, "newAnrANumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 793
    const-string/jumbo v1, "newAnrANumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 795
    :cond_2
    const-string/jumbo v1, "newAnrBNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 796
    const-string/jumbo v1, "newAnrBNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 798
    :cond_3
    const-string/jumbo v1, "newAnrCNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 799
    const-string/jumbo v1, "newAnrCNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 801
    :cond_4
    const-string/jumbo v1, "newEmails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 802
    const-string/jumbo v1, "newEmails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 805
    :cond_5
    if-nez v9, :cond_6

    .line 806
    const-string v9, ""

    .line 807
    :cond_6
    if-nez v14, :cond_7

    .line 808
    const-string v14, ""

    .line 809
    :cond_7
    if-nez v15, :cond_8

    .line 810
    const-string v15, ""

    .line 811
    :cond_8
    if-nez v3, :cond_9

    .line 812
    const-string v3, ""

    .line 813
    :cond_9
    if-nez v4, :cond_a

    .line 814
    const-string v4, ""

    .line 815
    :cond_a
    if-nez v5, :cond_b

    .line 816
    const-string v5, ""

    .line 817
    :cond_b
    if-nez v6, :cond_c

    .line 818
    const-string v6, ""

    .line 819
    :cond_c
    if-nez v7, :cond_d

    .line 820
    const-string v7, ""

    .line 821
    :cond_d
    if-nez v8, :cond_e

    .line 822
    const-string v8, ""

    .line 824
    :cond_e
    const-string v1, "adn_index"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 825
    const-string v1, "adn_index"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 828
    :cond_f
    if-eqz v21, :cond_11

    .line 830
    const-string v1, "isFromContacts"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 831
    if-eqz v19, :cond_10

    move-object/from16 v1, p0

    .line 832
    invoke-direct/range {v1 .. v11}, Lcom/android/internal/telephony/IccProvider;->updateExpansionIccRecordInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v10

    .end local v14           #tag:Ljava/lang/String;
    .end local v15           #number:Ljava/lang/String;
    :goto_1
    move v1, v10

    .line 848
    :goto_2
    return v1

    .line 740
    .end local v2           #efType:I
    .end local v3           #newTag:Ljava/lang/String;
    .end local v4           #newNumber:Ljava/lang/String;
    .end local v5           #newAnrNumber:Ljava/lang/String;
    .end local v6           #newAnrANumber:Ljava/lang/String;
    .end local v7           #newAnrBNumber:Ljava/lang/String;
    .end local v8           #newAnrCNumber:Ljava/lang/String;
    .end local v9           #email:Ljava/lang/String;
    .end local v20           #emails:[Ljava/lang/String;
    .end local v23           #newEmails:[Ljava/lang/String;
    :pswitch_2
    const/16 v2, 0x6f3b

    .line 741
    .restart local v2       #efType:I
    const-string/jumbo v1, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 742
    goto/16 :goto_0

    .line 745
    .end local v2           #efType:I
    :pswitch_3
    const/16 v2, 0x6f3a

    .line 746
    .restart local v2       #efType:I
    const/16 v19, 0x1

    .line 747
    const/16 v21, 0x1

    .line 748
    goto/16 :goto_0

    .line 751
    .end local v2           #efType:I
    :pswitch_4
    const/16 v2, 0x6f40

    .line 752
    .restart local v2       #efType:I
    goto/16 :goto_0

    .line 755
    .end local v2           #efType:I
    :pswitch_5
    const/16 v2, 0x6f3a

    .line 756
    .restart local v2       #efType:I
    const/16 v21, 0x1

    .line 757
    goto/16 :goto_0

    .line 760
    .end local v2           #efType:I
    :pswitch_6
    const-string/jumbo v1, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 761
    const/16 v2, 0x6f3b

    .line 762
    .restart local v2       #efType:I
    const/16 v21, 0x1

    .line 763
    goto/16 :goto_0

    .line 766
    .end local v2           #efType:I
    :pswitch_7
    const/16 v2, 0x6f40

    .line 767
    .restart local v2       #efType:I
    const/16 v21, 0x1

    .line 768
    goto/16 :goto_0

    .restart local v3       #newTag:Ljava/lang/String;
    .restart local v4       #newNumber:Ljava/lang/String;
    .restart local v5       #newAnrNumber:Ljava/lang/String;
    .restart local v6       #newAnrANumber:Ljava/lang/String;
    .restart local v7       #newAnrBNumber:Ljava/lang/String;
    .restart local v8       #newAnrCNumber:Ljava/lang/String;
    .restart local v9       #email:Ljava/lang/String;
    .restart local v14       #tag:Ljava/lang/String;
    .restart local v15       #number:Ljava/lang/String;
    .restart local v20       #emails:[Ljava/lang/String;
    .restart local v23       #newEmails:[Ljava/lang/String;
    :cond_10
    move-object/from16 v12, p0

    move v13, v2

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v9

    move/from16 v17, v10

    move-object/from16 v18, v11

    .line 834
    invoke-direct/range {v12 .. v18}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    .end local v14           #tag:Ljava/lang/String;
    .end local v15           #number:Ljava/lang/String;
    move-result v10

    goto :goto_1

    .line 839
    .restart local v14       #tag:Ljava/lang/String;
    .restart local v15       #number:Ljava/lang/String;
    :cond_11
    const-string v1, "Update Adn"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    move-object/from16 v12, p0

    move v13, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v11

    .line 840
    invoke-direct/range {v12 .. v18}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v24

    .line 842
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "After UpdateAdn:"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v24

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 844
    if-nez v24, :cond_12

    .line 845
    const-string/jumbo v1, "success false"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 846
    const/4 v1, 0x0

    goto :goto_2

    .line 848
    :cond_12
    const/4 v1, 0x1

    goto :goto_2

    .line 734
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static getURL_MATCHER()Landroid/content/UriMatcher;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    return-object v0
.end method