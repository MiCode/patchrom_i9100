.class public Lcom/android/sec_settings/ApnEditor;
.super Landroid/preference/PreferenceActivity;
.source "ApnEditor.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sNotSet:Ljava/lang/String;

.field private static final sProjection:[Ljava/lang/String;


# instance fields
.field private APN_TYPE_LIST:Ljava/lang/String;

.field private dunRequired:Z

.field private mApn:Landroid/preference/EditTextPreference;

.field private mApnType:Landroid/preference/EditTextPreference;

.field private mApnTypeStyle:Z

.field private mApnType_list:Landroid/preference/ListPreference;

.field private mAuthType:Landroid/preference/ListPreference;

.field private mBearer:Landroid/preference/ListPreference;

.field private mCarrierEnabled:Landroid/preference/CheckBoxPreference;

.field private mCurMcc:Ljava/lang/String;

.field private mCurMnc:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mEditable:Z

.field private mFirstTime:Z

.field private mIsSprHidden:Z

.field private mIsVzwEditable:Z

.field private mMcc:Landroid/preference/EditTextPreference;

.field private mMmsPort:Landroid/preference/EditTextPreference;

.field private mMmsProxy:Landroid/preference/EditTextPreference;

.field private mMmsc:Landroid/preference/EditTextPreference;

.field private mMnc:Landroid/preference/EditTextPreference;

.field private mName:Landroid/preference/EditTextPreference;

.field private mNewApn:Z

.field private mPassword:Landroid/preference/EditTextPreference;

.field private mPort:Landroid/preference/EditTextPreference;

.field private mProtocol:Landroid/preference/ListPreference;

.field private mProxy:Landroid/preference/EditTextPreference;

.field private mRes:Landroid/content/res/Resources;

.field private mRoamingProtocol:Landroid/preference/ListPreference;

.field private mServer:Landroid/preference/EditTextPreference;

.field private mUri:Landroid/net/Uri;

.field private mUser:Landroid/preference/EditTextPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    const-class v0, Lcom/android/sec_settings/ApnEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/sec_settings/ApnEditor;->TAG:Ljava/lang/String;

    .line 123
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "apn"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "proxy"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "port"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "user"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "server"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "password"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mmsc"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mcc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mnc"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "numeric"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mmsproxy"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mmsport"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "authtype"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "carrier_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "bearer"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "roaming_protocol"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/sec_settings/ApnEditor;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/sec_settings/ApnEditor;->dunRequired:Z

    return-void
.end method

.method private bearerDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "raw"

    .prologue
    const/4 v3, 0x0

    .line 592
    iget-object v4, p0, Lcom/android/sec_settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v4, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 593
    .local v1, mBearerIndex:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 600
    :goto_0
    return-object v3

    .line 596
    :cond_0
    iget-object v4, p0, Lcom/android/sec_settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0a003c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 598
    .local v2, values:[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 599
    :catch_0
    move-exception v0

    .line 600
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 970
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/sec_settings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 971
    :cond_0
    const-string p1, ""

    .line 973
    .end local p1
    :cond_1
    return-object p1
.end method

.method private checkNotSetApn(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 980
    if-eqz p1, :cond_0

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/sec_settings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 981
    :cond_0
    const-string p1, "*"

    .line 989
    :cond_1
    :goto_0
    return-object p1

    .line 982
    :cond_2
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 983
    const-string p1, "default"

    goto :goto_0

    .line 984
    :cond_3
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 985
    const-string p1, "mms"

    goto :goto_0

    .line 986
    :cond_4
    const-string v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 987
    const-string p1, "supl"

    goto :goto_0
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 907
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 908
    :cond_0
    sget-object p1, Lcom/android/sec_settings/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 910
    .end local p1
    :cond_1
    return-object p1
.end method

.method private checkNullApn(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 916
    iget-boolean v0, p0, Lcom/android/sec_settings/ApnEditor;->dunRequired:Z

    if-eqz v0, :cond_c

    .line 917
    if-nez p1, :cond_1

    .line 918
    sget-object p1, Lcom/android/sec_settings/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 963
    :cond_0
    :goto_0
    return-object p1

    .line 919
    :cond_1
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/sec_settings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 920
    :cond_2
    const-string p1, "internet + mms + dun"

    goto :goto_0

    .line 921
    :cond_3
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 922
    const-string p1, "internet + mms"

    goto :goto_0

    .line 923
    :cond_4
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 924
    const-string p1, "internet + dun"

    goto :goto_0

    .line 925
    :cond_5
    const-string v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 926
    const-string p1, "internet"

    goto :goto_0

    .line 927
    :cond_6
    const-string v0, "5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 928
    const-string p1, "mms"

    goto :goto_0

    .line 929
    :cond_7
    const-string v0, "6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 930
    const-string p1, "dun"

    goto :goto_0

    .line 931
    :cond_8
    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 932
    const-string v0, "mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "dun"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 933
    const-string p1, "internet + mms + dun"

    goto :goto_0

    .line 934
    :cond_9
    const-string v0, "mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 935
    const-string p1, "internet + mms"

    goto :goto_0

    .line 936
    :cond_a
    const-string v0, "dun"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 937
    const-string p1, "internet + dun"

    goto/16 :goto_0

    .line 939
    :cond_b
    const-string p1, "internet"

    goto/16 :goto_0

    .line 946
    :cond_c
    if-nez p1, :cond_d

    .line 947
    sget-object p1, Lcom/android/sec_settings/ApnEditor;->sNotSet:Ljava/lang/String;

    goto/16 :goto_0

    .line 948
    :cond_d
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/android/sec_settings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 949
    :cond_e
    const-string p1, "internet + mms + supl"

    goto/16 :goto_0

    .line 950
    :cond_f
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 951
    const-string p1, "internet"

    goto/16 :goto_0

    .line 952
    :cond_10
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 953
    const-string p1, "mms"

    goto/16 :goto_0

    .line 954
    :cond_11
    const-string v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 955
    const-string p1, "supl"

    goto/16 :goto_0

    .line 956
    :cond_12
    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 957
    const-string v0, "mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 958
    const-string p1, "internet + mms"

    goto/16 :goto_0

    .line 960
    :cond_13
    const-string p1, "internet"

    goto/16 :goto_0
.end method

.method private deleteApn()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 890
    invoke-virtual {p0}, Lcom/android/sec_settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 891
    invoke-virtual {p0}, Lcom/android/sec_settings/ApnEditor;->finish()V

    .line 892
    return-void
.end method

.method private fillUi()V
    .locals 13

    .prologue
    .line 365
    sget-object v9, Lcom/android/sec_settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fillUi(), isFirstTime? "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/sec_settings/ApnEditor;->mFirstTime:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", newAPN? "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/sec_settings/ApnEditor;->mNewApn:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const/4 v0, 0x0

    .line 368
    .local v0, apnType:Ljava/lang/String;
    iget-boolean v9, p0, Lcom/android/sec_settings/ApnEditor;->mFirstTime:Z

    if-eqz v9, :cond_4

    .line 369
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/sec_settings/ApnEditor;->mFirstTime:Z

    .line 371
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/sec_settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 372
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/sec_settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x2

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 373
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/sec_settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x3

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 374
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/sec_settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x4

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 375
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/sec_settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x5

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 376
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/sec_settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x6

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 377
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/sec_settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x7

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 378
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/sec_settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0xc

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 379
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/sec_settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0xd

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 380
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/sec_settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x8

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 381
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/sec_settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x9

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 382
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/sec_settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0xa

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 383
    iget-boolean v9, p0, Lcom/android/sec_settings/ApnEditor;->mApnTypeStyle:Z

    if-nez v9, :cond_0

    .line 384
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/sec_settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0xf

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 387
    :cond_0
    iget-boolean v9, p0, Lcom/android/sec_settings/ApnEditor;->mNewApn:Z

    if-eqz v9, :cond_1

    .line 388
    const-string v9, "gsm.sim.operator.numeric"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 391
    .local v6, numeric:Ljava/lang/String;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x4

    if-le v9, v10, :cond_1

    .line 393
    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 395
    .local v4, mcc:Ljava/lang/String;
    const/4 v9, 0x3

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 397
    .local v5, mnc:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v9, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 398
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v9, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 399
    iput-object v5, p0, Lcom/android/sec_settings/ApnEditor;->mCurMnc:Ljava/lang/String;

    .line 400
    iput-object v4, p0, Lcom/android/sec_settings/ApnEditor;->mCurMcc:Ljava/lang/String;

    .line 404
    .end local v4           #mcc:Ljava/lang/String;
    .end local v5           #mnc:Ljava/lang/String;
    .end local v6           #numeric:Ljava/lang/String;
    :cond_1
    iget-boolean v9, p0, Lcom/android/sec_settings/ApnEditor;->mApnTypeStyle:Z

    if-eqz v9, :cond_3

    .line 406
    invoke-direct {p0}, Lcom/android/sec_settings/ApnEditor;->isDunExist()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/sec_settings/ApnEditor;->dunRequired:Z

    .line 407
    iget-boolean v9, p0, Lcom/android/sec_settings/ApnEditor;->dunRequired:Z

    if-eqz v9, :cond_2

    .line 408
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    const v10, 0x7f0a005f

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 409
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    const v10, 0x7f0a0060

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 413
    :cond_2
    sget-object v9, Lcom/android/sec_settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fillUi(), APN type DB data : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/sec_settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0xf

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0xf

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 415
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/sec_settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0xf

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 417
    iget-boolean v9, p0, Lcom/android/sec_settings/ApnEditor;->dunRequired:Z

    if-eqz v9, :cond_13

    .line 418
    if-eqz v0, :cond_12

    .line 419
    const-string v9, "*"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 420
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    const-string v10, "default,supl,mms,dun"

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 456
    :cond_3
    :goto_0
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0xe

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 457
    .local v1, authVal:I
    const/4 v9, -0x1

    if-eq v1, v9, :cond_18

    .line 458
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v9, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 463
    :goto_1
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/sec_settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x10

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 464
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/sec_settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x13

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 465
    iget-object v10, p0, Lcom/android/sec_settings/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x11

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_19

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {v10, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 466
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/sec_settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x12

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 469
    .end local v1           #authVal:I
    :cond_4
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/sec_settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/sec_settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 470
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/sec_settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/sec_settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 471
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/sec_settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/sec_settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 472
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/sec_settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/sec_settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/sec_settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/sec_settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 474
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/sec_settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/sec_settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 475
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/sec_settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/sec_settings/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 476
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/sec_settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/sec_settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/sec_settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/sec_settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 478
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/sec_settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/sec_settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 479
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/sec_settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/sec_settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 480
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/sec_settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/sec_settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 483
    iget-boolean v9, p0, Lcom/android/sec_settings/ApnEditor;->mApnTypeStyle:Z

    if-nez v9, :cond_1a

    .line 484
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/sec_settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/sec_settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 490
    :goto_3
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 491
    .local v1, authVal:Ljava/lang/String;
    if-eqz v1, :cond_1b

    .line 492
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 493
    .local v2, authValIndex:I
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v9, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 495
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v10, 0x7f0a0038

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 496
    .local v8, values:[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    aget-object v10, v8, v2

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 501
    .end local v2           #authValIndex:I
    .end local v8           #values:[Ljava/lang/String;
    :goto_4
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/sec_settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/sec_settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v10, v11}, Lcom/android/sec_settings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/sec_settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 503
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/sec_settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/sec_settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v10, v11}, Lcom/android/sec_settings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/sec_settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 505
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/sec_settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/sec_settings/ApnEditor;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/sec_settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 508
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Setting_EnableEditingIpVersionType"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 509
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 510
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 516
    :goto_5
    invoke-direct {p0}, Lcom/android/sec_settings/ApnEditor;->isEditable()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/sec_settings/ApnEditor;->mEditable:Z

    .line 518
    iget-boolean v9, p0, Lcom/android/sec_settings/ApnEditor;->mEditable:Z

    if-eqz v9, :cond_5

    const-string v9, "KOR"

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 520
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 521
    .local v3, index:I
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0xb

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 522
    .restart local v6       #numeric:Ljava/lang/String;
    const-string v9, "45005"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d

    const/16 v9, 0x3e8

    if-ne v9, v3, :cond_1d

    .line 524
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/sec_settings/ApnEditor;->mEditable:Z

    .line 535
    .end local v3           #index:I
    .end local v6           #numeric:Ljava/lang/String;
    :cond_5
    :goto_6
    const-string v9, "SPR"

    invoke-static {}, Lcom/android/sec_settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 536
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v9

    if-nez v9, :cond_21

    .line 537
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/sec_settings/ApnEditor;->mIsSprHidden:Z

    .line 541
    :cond_6
    :goto_7
    iget-boolean v9, p0, Lcom/android/sec_settings/ApnEditor;->mEditable:Z

    if-eqz v9, :cond_7

    iget-boolean v9, p0, Lcom/android/sec_settings/ApnEditor;->mIsSprHidden:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8

    .line 543
    :cond_7
    const-string v9, "apn_edit"

    invoke-virtual {p0, v9}, Lcom/android/sec_settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 545
    :cond_8
    const-string v9, "VZW"

    invoke-static {}, Lcom/android/sec_settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 546
    iget-boolean v9, p0, Lcom/android/sec_settings/ApnEditor;->mIsVzwEditable:Z

    if-eqz v9, :cond_22

    .line 547
    sget-object v9, Lcom/android/sec_settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v10, "isVzwEditable = true"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const-string v9, "apn_edit"

    invoke-virtual {p0, v9}, Lcom/android/sec_settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 555
    :cond_9
    :goto_8
    const-string v9, "DCM"

    invoke-static {}, Lcom/android/sec_settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 557
    const-string v9, "apn_protocol"

    invoke-virtual {p0, v9}, Lcom/android/sec_settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 558
    .local v7, pref:Landroid/preference/Preference;
    if-eqz v7, :cond_a

    .line 559
    invoke-virtual {p0}, Lcom/android/sec_settings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 562
    :cond_a
    sget-object v9, Lcom/android/sec_settings/ApnEditor;->sNotSet:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/sec_settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/sec_settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 563
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    const-string v10, "default,supl"

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 566
    .end local v7           #pref:Landroid/preference/Preference;
    :cond_b
    const-string v9, "TMB"

    invoke-static {}, Lcom/android/sec_settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 567
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 568
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 570
    :cond_c
    return-void

    .line 421
    .end local v1           #authVal:Ljava/lang/String;
    :cond_d
    const-string v9, "default"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 422
    const-string v9, "mms"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_e

    const-string v9, "dun"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 423
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    const-string v10, "default,supl,mms,dun"

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 424
    :cond_e
    const-string v9, "mms"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 425
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    const-string v10, "default,supl,mms"

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 426
    :cond_f
    const-string v9, "dun"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 427
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    const-string v10, "default,supl,dun"

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 429
    :cond_10
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    const-string v10, "default,supl"

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 432
    :cond_11
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/sec_settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0xf

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 435
    :cond_12
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/sec_settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0xf

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 438
    :cond_13
    if-eqz v0, :cond_17

    .line 439
    const-string v9, "*"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 440
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    const-string v10, "default,supl,mms"

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 441
    :cond_14
    const-string v9, "default"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 442
    const-string v9, "mms"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 443
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    const-string v10, "default,supl,mms"

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 445
    :cond_15
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    const-string v10, "default,supl"

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 448
    :cond_16
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/sec_settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0xf

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 451
    :cond_17
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/sec_settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0xf

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 460
    .local v1, authVal:I
    :cond_18
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 465
    :cond_19
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 486
    .end local v1           #authVal:I
    :cond_1a
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/sec_settings/ApnEditor;->checkNullApn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/sec_settings/ApnEditor;->APN_TYPE_LIST:Ljava/lang/String;

    .line 487
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/sec_settings/ApnEditor;->APN_TYPE_LIST:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 498
    .local v1, authVal:Ljava/lang/String;
    :cond_1b
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    sget-object v10, Lcom/android/sec_settings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 512
    :cond_1c
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 513
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_5

    .line 525
    .restart local v3       #index:I
    .restart local v6       #numeric:Ljava/lang/String;
    :cond_1d
    const-string v9, "45008"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1e

    const-string v9, "45002"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    :cond_1e
    const/16 v9, 0x3e9

    if-eq v9, v3, :cond_1f

    const/16 v9, 0x3ea

    if-ne v9, v3, :cond_20

    .line 528
    :cond_1f
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/sec_settings/ApnEditor;->mEditable:Z

    goto/16 :goto_6

    .line 529
    :cond_20
    const-string v9, "45006"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/16 v9, 0x3eb

    if-ne v9, v3, :cond_5

    .line 531
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/sec_settings/ApnEditor;->mEditable:Z

    goto/16 :goto_6

    .line 539
    .end local v3           #index:I
    .end local v6           #numeric:Ljava/lang/String;
    :cond_21
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/sec_settings/ApnEditor;->mIsSprHidden:Z

    goto/16 :goto_7

    .line 550
    :cond_22
    const-string v9, "apn_edit"

    invoke-virtual {p0, v9}, Lcom/android/sec_settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 551
    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    goto/16 :goto_8
.end method

.method private getErrorMsg()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 826
    const/4 v0, 0x0

    .line 828
    iget-object v1, p0, Lcom/android/sec_settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/sec_settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 829
    iget-object v2, p0, Lcom/android/sec_settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/sec_settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 830
    iget-object v3, p0, Lcom/android/sec_settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/sec_settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 831
    iget-object v4, p0, Lcom/android/sec_settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/sec_settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 833
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v5, :cond_1

    .line 834
    iget-object v0, p0, Lcom/android/sec_settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f09050e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 843
    :cond_0
    :goto_0
    return-object v0

    .line 835
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v5, :cond_2

    .line 836
    iget-object v0, p0, Lcom/android/sec_settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f09050f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 837
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    .line 838
    iget-object v0, p0, Lcom/android/sec_settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090510

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 839
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    const v2, 0xfffe

    and-int/2addr v1, v2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 840
    iget-object v0, p0, Lcom/android/sec_settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090511

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isDunExist()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1024
    sget-object v0, Lcom/android/sec_settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "isDunExist"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/sec_settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1027
    const/4 v6, 0x0

    .line 1029
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1030
    sget-object v0, Lcom/android/sec_settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "No numeric data"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 1061
    :cond_0
    :goto_0
    return v0

    .line 1035
    :cond_1
    new-instance v3, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numeric = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1038
    :try_start_0
    invoke-virtual {p0}, Lcom/android/sec_settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://nwkinfo/nwkinfo/carriers"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1040
    if-eqz v1, :cond_4

    .line 1041
    :try_start_1
    sget-object v0, Lcom/android/sec_settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v2, "Query databases to find dun type"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1045
    :cond_2
    const-string v0, "type"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1046
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "dun"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "default"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1047
    sget-object v0, Lcom/android/sec_settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v2, "Dun type is exist"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    const/4 v6, 0x1

    .line 1050
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-nez v0, :cond_2

    :cond_4
    move v0, v6

    .line 1059
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1054
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v2, v7

    move v0, v6

    .line 1055
    :goto_1
    :try_start_2
    sget-object v3, Lcom/android/sec_settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception caught to query databases : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1059
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_2
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 1054
    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move v0, v6

    goto :goto_1
.end method

.method private isEditable()Z
    .locals 9

    .prologue
    .line 315
    const/4 v8, 0x1

    .line 316
    .local v8, editable:Z
    const/4 v6, 0x0

    .line 319
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(name = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND apn = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND user = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND password = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 327
    .local v3, selection:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/sec_settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://nwkinfo/nwkinfo/carriers"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 329
    if-eqz v6, :cond_1

    .line 330
    sget-object v0, Lcom/android/sec_settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "No carriers in nwkinfo provider"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 333
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    :cond_0
    const-string v0, "1"

    const-string v1, "editable"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 336
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 343
    :cond_1
    if-eqz v6, :cond_2

    .line 344
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 346
    :cond_2
    :goto_0
    sget-object v0, Lcom/android/sec_settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEditable  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return v8

    .line 340
    :catch_0
    move-exception v7

    .line 341
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    sget-object v0, Lcom/android/sec_settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception caught  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    if-eqz v6, :cond_2

    .line 344
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 343
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 344
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;
    .locals 6
    .parameter "raw"
    .parameter "protocol"

    .prologue
    const/4 v3, 0x0

    .line 578
    invoke-virtual {p2, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 579
    .local v1, protocolIndex:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 586
    :goto_0
    return-object v3

    .line 582
    :cond_0
    iget-object v4, p0, Lcom/android/sec_settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0a003a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 584
    .local v2, values:[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 585
    :catch_0
    move-exception v0

    .line 586
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method private starify(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    .line 895
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 896
    :cond_0
    sget-object v2, Lcom/android/sec_settings/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 902
    :goto_0
    return-object v2

    .line 898
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [C

    .line 899
    .local v1, password:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 900
    const/16 v2, 0x2a

    aput-char v2, v1, v0

    .line 899
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 902
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method private validateAndSave(Z)Z
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 745
    iget-object v0, p0, Lcom/android/sec_settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/sec_settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 746
    iget-object v3, p0, Lcom/android/sec_settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/sec_settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 747
    iget-object v4, p0, Lcom/android/sec_settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/sec_settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 748
    iget-object v5, p0, Lcom/android/sec_settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/sec_settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 750
    invoke-direct {p0}, Lcom/android/sec_settings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    if-nez p1, :cond_0

    .line 751
    invoke-virtual {p0, v1}, Lcom/android/sec_settings/ApnEditor;->showDialog(I)V

    move v0, v1

    .line 822
    :goto_0
    return v0

    .line 755
    :cond_0
    iget-object v6, p0, Lcom/android/sec_settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_1

    .line 756
    sget-object v0, Lcom/android/sec_settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v2, "Could not go to the first row in the Cursor when saving data."

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 758
    goto :goto_0

    .line 762
    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v6, p0, Lcom/android/sec_settings/ApnEditor;->mNewApn:Z

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v2, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v2, :cond_2

    move v0, v1

    .line 764
    goto :goto_0

    .line 767
    :cond_2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 771
    const-string v6, "name"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/sec_settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x7f09076f

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {v1, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    const-string v0, "apn"

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    const-string v0, "proxy"

    iget-object v3, p0, Lcom/android/sec_settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/sec_settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    const-string v0, "port"

    iget-object v3, p0, Lcom/android/sec_settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/sec_settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    const-string v0, "mmsproxy"

    iget-object v3, p0, Lcom/android/sec_settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/sec_settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    const-string v0, "mmsport"

    iget-object v3, p0, Lcom/android/sec_settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/sec_settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    const-string v0, "user"

    iget-object v3, p0, Lcom/android/sec_settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/sec_settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    const-string v0, "server"

    iget-object v3, p0, Lcom/android/sec_settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/sec_settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    const-string v0, "password"

    iget-object v3, p0, Lcom/android/sec_settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/sec_settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    const-string v0, "mmsc"

    iget-object v3, p0, Lcom/android/sec_settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/sec_settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    const-string v0, "carrier_enabled"

    iget-object v3, p0, Lcom/android/sec_settings/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 784
    iget-object v0, p0, Lcom/android/sec_settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 785
    if-eqz v0, :cond_4

    .line 786
    const-string v3, "authtype"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 789
    :cond_4
    const-string v0, "protocol"

    iget-object v3, p0, Lcom/android/sec_settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/sec_settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    const-string v0, "roaming_protocol"

    iget-object v3, p0, Lcom/android/sec_settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/sec_settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    iget-boolean v0, p0, Lcom/android/sec_settings/ApnEditor;->mApnTypeStyle:Z

    if-nez v0, :cond_8

    .line 795
    const-string v0, "d2tmo"

    const-string v3, "ro.product.name"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/sec_settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 796
    const-string v0, "type"

    const-string v3, "default,mms,supl"

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    :goto_1
    const-string v0, "mcc"

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    const-string v0, "mnc"

    invoke-virtual {v1, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    const-string v0, "numeric"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    iget-object v0, p0, Lcom/android/sec_settings/ApnEditor;->mCurMnc:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/sec_settings/ApnEditor;->mCurMcc:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 810
    iget-object v0, p0, Lcom/android/sec_settings/ApnEditor;->mCurMnc:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/sec_settings/ApnEditor;->mCurMcc:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 811
    const-string v0, "current"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 815
    :cond_5
    iget-object v0, p0, Lcom/android/sec_settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 816
    if-eqz v0, :cond_6

    .line 817
    const-string v3, "bearer"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 820
    :cond_6
    invoke-virtual {p0}, Lcom/android/sec_settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/android/sec_settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v3, v1, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v2

    .line 822
    goto/16 :goto_0

    .line 798
    :cond_7
    const-string v0, "type"

    iget-object v3, p0, Lcom/android/sec_settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/sec_settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 801
    :cond_8
    sget-object v0, Lcom/android/sec_settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "validateAndSave() checkNotSetApn("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/sec_settings/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const-string v0, "type"

    iget-object v3, p0, Lcom/android/sec_settings/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/sec_settings/ApnEditor;->checkNotSetApn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const/4 v12, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 169
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 171
    const v8, 0x7f07000e

    invoke-virtual {p0, v8}, Lcom/android/sec_settings/ApnEditor;->addPreferencesFromResource(I)V

    .line 173
    invoke-virtual {p0}, Lcom/android/sec_settings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 174
    .local v2, ps:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/sec_settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f0904f0

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/android/sec_settings/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 175
    const-string v8, "apn_name"

    invoke-virtual {p0, v8}, Lcom/android/sec_settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/EditTextPreference;

    iput-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    .line 176
    const-string v8, "apn_apn"

    invoke-virtual {p0, v8}, Lcom/android/sec_settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/EditTextPreference;

    iput-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    .line 178
    const-string v8, "ATT"

    invoke-static {}, Lcom/android/sec_settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v12}, Lcom/android/sec_settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 179
    iget-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 182
    :cond_0
    const-string v8, "apn_http_proxy"

    invoke-virtual {p0, v8}, Lcom/android/sec_settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/EditTextPreference;

    iput-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    .line 183
    const-string v8, "apn_http_port"

    invoke-virtual {p0, v8}, Lcom/android/sec_settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/EditTextPreference;

    iput-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    .line 184
    const-string v8, "apn_user"

    invoke-virtual {p0, v8}, Lcom/android/sec_settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/EditTextPreference;

    iput-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    .line 185
    const-string v8, "apn_server"

    invoke-virtual {p0, v8}, Lcom/android/sec_settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/EditTextPreference;

    iput-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    .line 186
    const-string v8, "apn_password"

    invoke-virtual {p0, v8}, Lcom/android/sec_settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/EditTextPreference;

    iput-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    .line 187
    const-string v8, "apn_mms_proxy"

    invoke-virtual {p0, v8}, Lcom/android/sec_settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/EditTextPreference;

    iput-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    .line 188
    const-string v8, "apn_mms_port"

    invoke-virtual {p0, v8}, Lcom/android/sec_settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/EditTextPreference;

    iput-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    .line 189
    const-string v8, "apn_mmsc"

    invoke-virtual {p0, v8}, Lcom/android/sec_settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/EditTextPreference;

    iput-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    .line 190
    const-string v8, "apn_mcc"

    invoke-virtual {p0, v8}, Lcom/android/sec_settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/EditTextPreference;

    iput-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    .line 191
    const-string v8, "apn_mnc"

    invoke-virtual {p0, v8}, Lcom/android/sec_settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/EditTextPreference;

    iput-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    .line 193
    const-string v8, "apn_type_list"

    invoke-virtual {p0, v8}, Lcom/android/sec_settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    .line 194
    const-string v8, "apn_type"

    invoke-virtual {p0, v8}, Lcom/android/sec_settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/EditTextPreference;

    iput-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    .line 196
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v11, "CscFeature_Setting_EditOption4ApnType"

    invoke-virtual {v8, v11}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v11, "List"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 197
    iput-boolean v9, p0, Lcom/android/sec_settings/ApnEditor;->mApnTypeStyle:Z

    .line 201
    :goto_0
    iget-boolean v8, p0, Lcom/android/sec_settings/ApnEditor;->mApnTypeStyle:Z

    if-nez v8, :cond_4

    .line 202
    iget-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    invoke-virtual {v2, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 206
    :goto_1
    const-string v8, "auth_type"

    invoke-virtual {p0, v8}, Lcom/android/sec_settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    .line 207
    iget-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 209
    const-string v8, "apn_protocol"

    invoke-virtual {p0, v8}, Lcom/android/sec_settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    .line 210
    iget-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 212
    const-string v8, "apn_roaming_protocol"

    invoke-virtual {p0, v8}, Lcom/android/sec_settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    .line 216
    const-string v8, "phone"

    invoke-virtual {p0, v8}, Lcom/android/sec_settings/ApnEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 217
    .local v7, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v8

    const/4 v11, 0x2

    if-ne v8, v11, :cond_5

    .line 218
    iget-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 223
    :goto_2
    const-string v8, "carrier_enabled"

    invoke-virtual {p0, v8}, Lcom/android/sec_settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    .line 224
    const-string v8, "ro.csc.sales_code"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, sales_code:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 226
    const-string v8, "ril.sales_code"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 230
    :cond_1
    const-string v8, "bearer"

    invoke-virtual {p0, v8}, Lcom/android/sec_settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    .line 231
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v11, "CscFeature_Setting_DisableMenuBearerInApnEdit"

    invoke-virtual {v8, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 232
    iget-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 237
    :goto_3
    invoke-virtual {p0}, Lcom/android/sec_settings/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 238
    .local v6, tempIntent:Landroid/content/Intent;
    const-string v8, "keyString"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 239
    .local v4, strName:Ljava/lang/String;
    const-string v8, "vzw"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 240
    .local v5, strNameVzw:Ljava/lang/String;
    if-nez v4, :cond_7

    .line 241
    iput-boolean v10, p0, Lcom/android/sec_settings/ApnEditor;->mIsSprHidden:Z

    .line 244
    :goto_4
    if-nez v5, :cond_8

    .line 245
    iput-boolean v10, p0, Lcom/android/sec_settings/ApnEditor;->mIsVzwEditable:Z

    .line 248
    :goto_5
    const-string v8, "VZW"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 249
    iget-boolean v8, p0, Lcom/android/sec_settings/ApnEditor;->mIsVzwEditable:Z

    if-nez v8, :cond_2

    .line 250
    iget-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, v10}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 251
    iget-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v8, v10}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 252
    iget-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v10}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 253
    iget-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, v10}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 254
    iget-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, v10}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 255
    iget-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, v10}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 256
    iget-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, v10}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 257
    iget-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, v10}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 258
    iget-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, v10}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 259
    iget-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, v10}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 260
    iget-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, v10}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 261
    iget-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, v10}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 262
    iget-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, v10}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 263
    iget-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, v10}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 264
    iget-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v8, v10}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 265
    iget-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    invoke-virtual {v8, v10}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 266
    iget-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v8, v10}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 267
    iget-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v8, v10}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 271
    :cond_2
    invoke-virtual {p0}, Lcom/android/sec_settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iput-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    .line 273
    invoke-virtual {p0}, Lcom/android/sec_settings/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 274
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, action:Ljava/lang/String;
    if-nez p1, :cond_9

    move v8, v9

    :goto_6
    iput-boolean v8, p0, Lcom/android/sec_settings/ApnEditor;->mFirstTime:Z

    .line 278
    const-string v8, "android.intent.action.EDIT"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 279
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    iput-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mUri:Landroid/net/Uri;

    .line 307
    :goto_7
    iget-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mUri:Landroid/net/Uri;

    sget-object v9, Lcom/android/sec_settings/ApnEditor;->sProjection:[Ljava/lang/String;

    invoke-virtual {p0, v8, v9, v12, v12}, Lcom/android/sec_settings/ApnEditor;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    iput-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    .line 308
    iget-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 310
    invoke-direct {p0}, Lcom/android/sec_settings/ApnEditor;->fillUi()V

    .line 311
    :goto_8
    return-void

    .line 199
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #sales_code:Ljava/lang/String;
    .end local v4           #strName:Ljava/lang/String;
    .end local v5           #strNameVzw:Ljava/lang/String;
    .end local v6           #tempIntent:Landroid/content/Intent;
    .end local v7           #tm:Landroid/telephony/TelephonyManager;
    :cond_3
    iput-boolean v10, p0, Lcom/android/sec_settings/ApnEditor;->mApnTypeStyle:Z

    goto/16 :goto_0

    .line 204
    :cond_4
    iget-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 220
    .restart local v7       #tm:Landroid/telephony/TelephonyManager;
    :cond_5
    invoke-virtual {p0}, Lcom/android/sec_settings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/sec_settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 234
    .restart local v3       #sales_code:Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lcom/android/sec_settings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/sec_settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 243
    .restart local v4       #strName:Ljava/lang/String;
    .restart local v5       #strNameVzw:Ljava/lang/String;
    .restart local v6       #tempIntent:Landroid/content/Intent;
    :cond_7
    iput-boolean v9, p0, Lcom/android/sec_settings/ApnEditor;->mIsSprHidden:Z

    goto/16 :goto_4

    .line 247
    :cond_8
    iput-boolean v9, p0, Lcom/android/sec_settings/ApnEditor;->mIsVzwEditable:Z

    goto/16 :goto_5

    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_9
    move v8, v10

    .line 276
    goto :goto_6

    .line 280
    :cond_a
    const-string v8, "android.intent.action.INSERT"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 281
    iget-boolean v8, p0, Lcom/android/sec_settings/ApnEditor;->mFirstTime:Z

    if-nez v8, :cond_b

    const-string v8, "pos"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_c

    .line 282
    :cond_b
    invoke-virtual {p0}, Lcom/android/sec_settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    iput-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mUri:Landroid/net/Uri;

    .line 287
    :goto_9
    iput-boolean v9, p0, Lcom/android/sec_settings/ApnEditor;->mNewApn:Z

    .line 291
    iget-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mUri:Landroid/net/Uri;

    if-nez v8, :cond_d

    .line 292
    sget-object v8, Lcom/android/sec_settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to insert new telephony provider into "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/sec_settings/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual {p0}, Lcom/android/sec_settings/ApnEditor;->finish()V

    goto :goto_8

    .line 284
    :cond_c
    sget-object v8, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v10, "pos"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    int-to-long v10, v10

    invoke-static {v8, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    iput-object v8, p0, Lcom/android/sec_settings/ApnEditor;->mUri:Landroid/net/Uri;

    goto :goto_9

    .line 300
    :cond_d
    const/4 v8, -0x1

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    iget-object v10, p0, Lcom/android/sec_settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/android/sec_settings/ApnEditor;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_7

    .line 303
    :cond_e
    invoke-virtual {p0}, Lcom/android/sec_settings/ApnEditor;->finish()V

    goto/16 :goto_8
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const v3, 0x104000a

    .line 849
    if-nez p1, :cond_0

    .line 850
    invoke-direct {p0}, Lcom/android/sec_settings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 852
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09050d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090bf8

    new-instance v3, Lcom/android/sec_settings/ApnEditor$1;

    invoke-direct {v3, p0}, Lcom/android/sec_settings/ApnEditor$1;-><init>(Lcom/android/sec_settings/ApnEditor;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 873
    :goto_0
    return-object v0

    .line 863
    :cond_0
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 864
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09022c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090dca

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 873
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const v6, 0x7f02015c

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 658
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 660
    iget-boolean v0, p0, Lcom/android/sec_settings/ApnEditor;->mEditable:Z

    if-ne v0, v3, :cond_1

    .line 662
    iget-boolean v0, p0, Lcom/android/sec_settings/ApnEditor;->mNewApn:Z

    if-nez v0, :cond_0

    .line 663
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/sec_settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 664
    iget-boolean v0, p0, Lcom/android/sec_settings/ApnEditor;->mIsVzwEditable:Z

    if-eqz v0, :cond_0

    .line 665
    const v0, 0x7f090509

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020160

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 675
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/sec_settings/ApnEditor;->mIsSprHidden:Z

    if-nez v0, :cond_1

    .line 676
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/sec_settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 677
    const v0, 0x7f09050b

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02016c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 686
    :cond_1
    :goto_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/sec_settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 687
    const v0, 0x7f09050c

    invoke-interface {p1, v2, v5, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 693
    :goto_2
    return v3

    .line 669
    :cond_2
    iget-boolean v0, p0, Lcom/android/sec_settings/ApnEditor;->mIsSprHidden:Z

    if-nez v0, :cond_0

    .line 670
    const v0, 0x7f090509

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02015f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 680
    :cond_3
    const v0, 0x7f09050b

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02016c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 690
    :cond_4
    const v0, 0x7f09050c

    invoke-interface {p1, v2, v5, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 719
    packed-switch p1, :pswitch_data_0

    .line 727
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 721
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/sec_settings/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    invoke-virtual {p0}, Lcom/android/sec_settings/ApnEditor;->finish()V

    .line 724
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 719
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 698
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 714
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 700
    :pswitch_0
    invoke-direct {p0}, Lcom/android/sec_settings/ApnEditor;->deleteApn()V

    goto :goto_0

    .line 703
    :pswitch_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/sec_settings/ApnEditor;->validateAndSave(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 704
    invoke-virtual {p0}, Lcom/android/sec_settings/ApnEditor;->finish()V

    goto :goto_0

    .line 708
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/sec_settings/ApnEditor;->mNewApn:Z

    if-eqz v1, :cond_1

    .line 709
    invoke-virtual {p0}, Lcom/android/sec_settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/sec_settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 711
    :cond_1
    invoke-virtual {p0}, Lcom/android/sec_settings/ApnEditor;->finish()V

    goto :goto_0

    .line 698
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/android/sec_settings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 361
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 362
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v8, 0x0

    .line 606
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 607
    .local v4, key:Ljava/lang/String;
    const-string v7, "auth_type"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 609
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 610
    .local v3, index:I
    iget-object v7, p0, Lcom/android/sec_settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v7, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 612
    iget-object v7, p0, Lcom/android/sec_settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0a0038

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 613
    .local v6, values:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/sec_settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    aget-object v9, v6, v3

    invoke-virtual {v7, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    .end local v3           #index:I
    .end local v6           #values:[Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v7, 0x1

    :goto_1
    return v7

    .line 614
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/NumberFormatException;
    move v7, v8

    .line 615
    goto :goto_1

    .line 617
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_1
    const-string v7, "apn_protocol"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, p2

    .line 618
    check-cast v7, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v7, v9}, Lcom/android/sec_settings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v5

    .line 619
    .local v5, protocol:Ljava/lang/String;
    if-nez v5, :cond_2

    move v7, v8

    .line 620
    goto :goto_1

    .line 622
    :cond_2
    iget-object v7, p0, Lcom/android/sec_settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 623
    iget-object v7, p0, Lcom/android/sec_settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v7, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 624
    .end local v5           #protocol:Ljava/lang/String;
    .restart local p2
    :cond_3
    const-string v7, "apn_roaming_protocol"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v7, p2

    .line 625
    check-cast v7, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/sec_settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v7, v9}, Lcom/android/sec_settings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v5

    .line 626
    .restart local v5       #protocol:Ljava/lang/String;
    if-nez v5, :cond_4

    move v7, v8

    .line 627
    goto :goto_1

    .line 629
    :cond_4
    iget-object v7, p0, Lcom/android/sec_settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v7, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 630
    iget-object v7, p0, Lcom/android/sec_settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 631
    .end local v5           #protocol:Ljava/lang/String;
    .restart local p2
    :cond_5
    const-string v7, "bearer"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    move-object v7, p2

    .line 632
    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/sec_settings/ApnEditor;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 633
    .local v1, bearer:Ljava/lang/String;
    if-nez v1, :cond_6

    move v7, v8

    .line 634
    goto :goto_1

    .line 636
    :cond_6
    iget-object v7, p0, Lcom/android/sec_settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 637
    iget-object v7, p0, Lcom/android/sec_settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v7, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 640
    .end local v1           #bearer:Ljava/lang/String;
    .restart local p2
    :cond_7
    const-string v7, "apn_apn"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 641
    const-string v7, "ATT"

    invoke-static {}, Lcom/android/sec_settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/sec_settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 642
    sget-object v7, Lcom/android/sec_settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v9, "apn_apn"

    invoke-static {v7, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/sec_settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 644
    .local v0, apn:Ljava/lang/String;
    const-string v7, "phone"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "wap.cingular"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 645
    :cond_8
    const/16 v7, 0xa

    invoke-virtual {p0, v7}, Lcom/android/sec_settings/ApnEditor;->showDialog(I)V

    move v7, v8

    .line 646
    goto/16 :goto_1
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 878
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 880
    if-nez p1, :cond_0

    .line 881
    invoke-direct {p0}, Lcom/android/sec_settings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 883
    .local v0, msg:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 884
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 887
    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 352
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 353
    invoke-virtual {p0}, Lcom/android/sec_settings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 355
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 732
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 733
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/sec_settings/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    const-string v0, "pos"

    iget-object v1, p0, Lcom/android/sec_settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 736
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 995
    invoke-virtual {p0, p2}, Lcom/android/sec_settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 997
    const-string v1, "apn_type_list"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 999
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/sec_settings/ApnEditor;->checkNullApn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1000
    const-string v2, "APN"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Item1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    const-string v2, "APN"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Item1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    const-string v2, "APN"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Item1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/sec_settings/ApnEditor;->checkNullApn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sec_settings/ApnEditor;->APN_TYPE_LIST:Ljava/lang/String;

    .line 1005
    const-string v1, "APN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Item4 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/sec_settings/ApnEditor;->APN_TYPE_LIST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    iget-object v1, p0, Lcom/android/sec_settings/ApnEditor;->APN_TYPE_LIST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1019
    :cond_0
    :goto_0
    return-void

    .line 1009
    :cond_1
    if-eqz v0, :cond_0

    .line 1010
    iget-object v1, p0, Lcom/android/sec_settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1011
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/sec_settings/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1012
    :cond_2
    iget-object v1, p0, Lcom/android/sec_settings/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1013
    sget-object v0, Lcom/android/sec_settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSharedPreferenceChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1015
    :cond_3
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/sec_settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
