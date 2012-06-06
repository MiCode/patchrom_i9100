.class public Lcom/android/OriginalSettings/ApnEditor;
.super Lmiui/preference/BasePreferenceActivity;
.source "ApnEditor.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sNotSet:Ljava/lang/String;

.field private static final sProjection:[Ljava/lang/String;


# instance fields
.field private mApn:Landroid/preference/EditTextPreference;

.field private mApnType:Landroid/preference/EditTextPreference;

.field private mAuthType:Landroid/preference/ListPreference;

.field private mBearer:Landroid/preference/ListPreference;

.field private mCarrierEnabled:Landroid/preference/CheckBoxPreference;

.field private mCurMcc:Ljava/lang/String;

.field private mCurMnc:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mEditable:Z

.field private mFirstTime:Z

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

.field private mServer:Landroid/preference/EditTextPreference;

.field private mUri:Landroid/net/Uri;

.field private mUser:Landroid/preference/EditTextPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const-class v0, Lcom/android/OriginalSettings/ApnEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/OriginalSettings/ApnEditor;->TAG:Ljava/lang/String;

    .line 101
    const/16 v0, 0x13

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

    sput-object v0, Lcom/android/OriginalSettings/ApnEditor;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lmiui/preference/BasePreferenceActivity;-><init>()V

    return-void
.end method

.method private bearerDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "raw"

    .prologue
    const/4 v3, 0x0

    .line 395
    iget-object v4, p0, Lcom/android/OriginalSettings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v4, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 396
    .local v1, mBearerIndex:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 403
    :goto_0
    return-object v3

    .line 399
    :cond_0
    iget-object v4, p0, Lcom/android/OriginalSettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f07002e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 401
    .local v2, values:[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 660
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/OriginalSettings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 661
    :cond_0
    const-string p1, ""

    .line 663
    .end local p1
    :cond_1
    return-object p1
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 652
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 653
    :cond_0
    sget-object p1, Lcom/android/OriginalSettings/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 655
    .end local p1
    :cond_1
    return-object p1
.end method

.method private deleteApn()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 635
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 636
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnEditor;->finish()V

    .line 637
    return-void
.end method

.method private fillUi()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 277
    iget-boolean v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mFirstTime:Z

    if-eqz v9, :cond_1

    .line 278
    iput-boolean v8, p0, Lcom/android/OriginalSettings/ApnEditor;->mFirstTime:Z

    .line 280
    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/OriginalSettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 281
    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/OriginalSettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x2

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 282
    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/OriginalSettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 283
    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/OriginalSettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 284
    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/OriginalSettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x5

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 285
    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/OriginalSettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x6

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 286
    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/OriginalSettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x7

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 287
    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/OriginalSettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0xc

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 288
    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/OriginalSettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0xd

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 289
    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/OriginalSettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x8

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 290
    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/OriginalSettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x9

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 291
    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/OriginalSettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0xa

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 292
    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/OriginalSettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0xf

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 293
    iget-boolean v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mNewApn:Z

    if-eqz v9, :cond_0

    .line 294
    const-string v9, "gsm.sim.operator.numeric"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 297
    .local v4, numeric:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v13, :cond_0

    .line 299
    invoke-virtual {v4, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, mcc:Ljava/lang/String;
    invoke-virtual {v4, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 303
    .local v3, mnc:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v9, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 304
    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v9, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 305
    iput-object v3, p0, Lcom/android/OriginalSettings/ApnEditor;->mCurMnc:Ljava/lang/String;

    .line 306
    iput-object v2, p0, Lcom/android/OriginalSettings/ApnEditor;->mCurMcc:Ljava/lang/String;

    .line 309
    .end local v2           #mcc:Ljava/lang/String;
    .end local v3           #mnc:Ljava/lang/String;
    .end local v4           #numeric:Ljava/lang/String;
    :cond_0
    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0xe

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 310
    .local v0, authVal:I
    const/4 v9, -0x1

    if-eq v0, v9, :cond_4

    .line 311
    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v9, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 316
    :goto_0
    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/OriginalSettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x10

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 317
    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    iget-object v10, p0, Lcom/android/OriginalSettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x11

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-ne v10, v7, :cond_5

    :goto_1
    invoke-virtual {v9, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 318
    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0x12

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 322
    .end local v0           #authVal:I
    :cond_1
    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 323
    .local v5, salesCode:Ljava/lang/String;
    const-string v7, "DCM"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 324
    sget-object v7, Lcom/android/OriginalSettings/ApnEditor;->sNotSet:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 325
    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    const-string v9, "default,supl"

    invoke-virtual {v7, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 330
    :cond_2
    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 340
    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 341
    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, authVal:Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 346
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 347
    .local v1, authValIndex:I
    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v7, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 349
    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f07002a

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 350
    .local v6, values:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    aget-object v9, v6, v1

    invoke-virtual {v7, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 355
    .end local v1           #authValIndex:I
    .end local v6           #values:[Ljava/lang/String;
    :goto_2
    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/ApnEditor;->protocolDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/ApnEditor;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 360
    invoke-direct {p0}, Lcom/android/OriginalSettings/ApnEditor;->isEditable()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mEditable:Z

    .line 367
    sget-object v7, Lcom/android/OriginalSettings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Is the APN editable? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/OriginalSettings/ApnEditor;->mEditable:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-boolean v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mEditable:Z

    if-nez v7, :cond_3

    .line 371
    const-string v7, "apn_edit"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 373
    :cond_3
    return-void

    .line 313
    .end local v5           #salesCode:Ljava/lang/String;
    .local v0, authVal:I
    :cond_4
    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    move v7, v8

    .line 317
    goto/16 :goto_1

    .line 352
    .local v0, authVal:Ljava/lang/String;
    .restart local v5       #salesCode:Ljava/lang/String;
    :cond_6
    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    sget-object v9, Lcom/android/OriginalSettings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private getErrorMsg()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 585
    const/4 v1, 0x0

    .line 587
    .local v1, errorMsg:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/OriginalSettings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/OriginalSettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 588
    .local v4, name:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/OriginalSettings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/OriginalSettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 589
    .local v0, apn:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/OriginalSettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/OriginalSettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 590
    .local v2, mcc:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/OriginalSettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/OriginalSettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 592
    .local v3, mnc:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_1

    .line 593
    iget-object v5, p0, Lcom/android/OriginalSettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0b03c5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 602
    :cond_0
    :goto_0
    return-object v1

    .line 594
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_2

    .line 595
    iget-object v5, p0, Lcom/android/OriginalSettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0b03c6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 596
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    .line 597
    iget-object v5, p0, Lcom/android/OriginalSettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0b03c7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 598
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const v6, 0xfffe

    and-int/2addr v5, v6

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 599
    iget-object v5, p0, Lcom/android/OriginalSettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0b03c8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private isEditable()Z
    .locals 9

    .prologue
    .line 228
    const/4 v8, 0x1

    .line 229
    .local v8, editable:Z
    const/4 v6, 0x0

    .line 232
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(name = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND apn = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND user = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND password = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

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

    .line 240
    .local v3, selection:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://nwkinfo/nwkinfo/carriers"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 242
    if-eqz v6, :cond_1

    .line 243
    sget-object v0, Lcom/android/OriginalSettings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "No carriers in nwkinfo provider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 246
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    :cond_0
    const-string v0, "1"

    const-string v1, "editable"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 249
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 256
    :cond_1
    if-eqz v6, :cond_2

    .line 257
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 259
    :cond_2
    :goto_0
    return v8

    .line 253
    :catch_0
    move-exception v7

    .line 254
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    sget-object v0, Lcom/android/OriginalSettings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception caught  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    if-eqz v6, :cond_2

    .line 257
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 256
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 257
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private protocolDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "raw"

    .prologue
    const/4 v3, 0x0

    .line 381
    iget-object v4, p0, Lcom/android/OriginalSettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v4, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 382
    .local v1, protocolIndex:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 389
    :goto_0
    return-object v3

    .line 385
    :cond_0
    iget-object v4, p0, Lcom/android/OriginalSettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f07002c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 387
    .local v2, values:[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method private starify(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    .line 640
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 641
    :cond_0
    sget-object v2, Lcom/android/OriginalSettings/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 647
    :goto_0
    return-object v2

    .line 643
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [C

    .line 644
    .local v1, password:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 645
    const/16 v2, 0x2a

    aput-char v2, v1, v0

    .line 644
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 647
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method private validateAndSave(Z)Z
    .locals 12
    .parameter "force"

    .prologue
    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 511
    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 512
    .local v5, name:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 513
    .local v0, apn:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 514
    .local v3, mcc:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 516
    .local v4, mnc:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/OriginalSettings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    if-nez p1, :cond_0

    .line 517
    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/ApnEditor;->showDialog(I)V

    .line 581
    .end local v5           #name:Ljava/lang/String;
    :goto_0
    return v7

    .line 521
    .restart local v5       #name:Ljava/lang/String;
    :cond_0
    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-nez v9, :cond_1

    .line 522
    sget-object v8, Lcom/android/OriginalSettings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v9, "Could not go to the first row in the Cursor when saving data."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 528
    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mNewApn:Z

    if-eqz v9, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v8, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v8, :cond_2

    .line 529
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v8, v9, v11, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 533
    :cond_2
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 537
    .local v6, values:Landroid/content/ContentValues;
    const-string v7, "name"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v8, :cond_3

    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b05df

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .end local v5           #name:Ljava/lang/String;
    :cond_3
    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const-string v7, "apn"

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const-string v7, "proxy"

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string v7, "port"

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const-string v7, "mmsproxy"

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const-string v7, "mmsport"

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string v7, "user"

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    const-string v7, "server"

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string v7, "password"

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const-string v7, "mmsc"

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 550
    .local v1, authVal:Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 551
    const-string v7, "authtype"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 554
    :cond_4
    const-string v7, "protocol"

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string v7, "roaming_protocol"

    const-string v9, "IP"

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    const-string v7, "type"

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const-string v7, "mcc"

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const-string v7, "mnc"

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string v7, "numeric"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mCurMnc:Ljava/lang/String;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mCurMcc:Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 569
    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mCurMnc:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mCurMcc:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 570
    const-string v7, "current"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 574
    :cond_5
    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 575
    .local v2, bearerVal:Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 576
    const-string v7, "bearer"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 579
    :cond_6
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v7, v9, v6, v11, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v7, v8

    .line 581
    goto/16 :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 145
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 147
    const v4, 0x7f050004

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/ApnEditor;->addPreferencesFromResource(I)V

    .line 149
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0b03a8

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/OriginalSettings/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 150
    const-string v4, "apn_name"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    .line 151
    const-string v4, "apn_apn"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    .line 152
    const-string v4, "apn_http_proxy"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    .line 153
    const-string v4, "apn_http_port"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    .line 154
    const-string v4, "apn_user"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    .line 155
    const-string v4, "apn_server"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    .line 156
    const-string v4, "apn_password"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    .line 157
    const-string v4, "apn_mms_proxy"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    .line 158
    const-string v4, "apn_mms_port"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    .line 159
    const-string v4, "apn_mmsc"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    .line 160
    const-string v4, "apn_mcc"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    .line 161
    const-string v4, "apn_mnc"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    .line 162
    const-string v4, "apn_type"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    .line 164
    const-string v4, "auth_type"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    .line 165
    iget-object v4, p0, Lcom/android/OriginalSettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 167
    const-string v4, "apn_protocol"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    .line 168
    iget-object v4, p0, Lcom/android/OriginalSettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 170
    const-string v4, "carrier_enabled"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    .line 172
    const-string v4, "bearer"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    .line 173
    iget-object v4, p0, Lcom/android/OriginalSettings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 175
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    .line 177
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 178
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, action:Ljava/lang/String;
    if-nez p1, :cond_1

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/OriginalSettings/ApnEditor;->mFirstTime:Z

    .line 182
    const-string v4, "android.intent.action.EDIT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 183
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/ApnEditor;->mUri:Landroid/net/Uri;

    .line 211
    :goto_1
    iget-object v4, p0, Lcom/android/OriginalSettings/ApnEditor;->mUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/OriginalSettings/ApnEditor;->sProjection:[Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v8, v8}, Lcom/android/OriginalSettings/ApnEditor;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    .line 212
    iget-object v4, p0, Lcom/android/OriginalSettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 214
    invoke-direct {p0}, Lcom/android/OriginalSettings/ApnEditor;->fillUi()V

    .line 217
    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 218
    .local v3, salesCode:Ljava/lang/String;
    const-string v4, "DCM"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 219
    const-string v4, "apn_protocol"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 220
    .local v2, pref:Landroid/preference/Preference;
    if-eqz v2, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 224
    .end local v2           #pref:Landroid/preference/Preference;
    .end local v3           #salesCode:Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .line 180
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 184
    :cond_2
    const-string v4, "android.intent.action.INSERT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 185
    iget-boolean v4, p0, Lcom/android/OriginalSettings/ApnEditor;->mFirstTime:Z

    if-nez v4, :cond_3

    const-string v4, "pos"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4

    .line 186
    :cond_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/ApnEditor;->mUri:Landroid/net/Uri;

    .line 191
    :goto_3
    iput-boolean v5, p0, Lcom/android/OriginalSettings/ApnEditor;->mNewApn:Z

    .line 195
    iget-object v4, p0, Lcom/android/OriginalSettings/ApnEditor;->mUri:Landroid/net/Uri;

    if-nez v4, :cond_5

    .line 196
    sget-object v4, Lcom/android/OriginalSettings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to insert new telephony provider into "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnEditor;->finish()V

    goto :goto_2

    .line 188
    :cond_4
    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "pos"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/ApnEditor;->mUri:Landroid/net/Uri;

    goto :goto_3

    .line 204
    :cond_5
    const/4 v4, -0x1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    iget-object v6, p0, Lcom/android/OriginalSettings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/OriginalSettings/ApnEditor;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_1

    .line 207
    :cond_6
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnEditor;->finish()V

    goto :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 608
    if-nez p1, :cond_0

    .line 609
    invoke-direct {p0}, Lcom/android/OriginalSettings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 611
    .local v0, msg:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b03c4

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 618
    .end local v0           #msg:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 446
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 448
    iget-boolean v0, p0, Lcom/android/OriginalSettings/ApnEditor;->mEditable:Z

    if-ne v0, v3, :cond_1

    .line 450
    iget-boolean v0, p0, Lcom/android/OriginalSettings/ApnEditor;->mNewApn:Z

    if-nez v0, :cond_0

    .line 451
    const v0, 0x7f0b03c0

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020066

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 454
    :cond_0
    const/4 v0, 0x2

    const v1, 0x7f0b03c2

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 457
    :cond_1
    const/4 v0, 0x3

    const v1, 0x7f0b03c3

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 459
    return v3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 485
    packed-switch p1, :pswitch_data_0

    .line 493
    invoke-super {p0, p1, p2}, Lmiui/preference/BasePreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 487
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnEditor;->finish()V

    .line 490
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 485
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

    .line 464
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 480
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 466
    :pswitch_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/ApnEditor;->deleteApn()V

    goto :goto_0

    .line 469
    :pswitch_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/ApnEditor;->validateAndSave(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 470
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnEditor;->finish()V

    goto :goto_0

    .line 474
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/OriginalSettings/ApnEditor;->mNewApn:Z

    if-eqz v1, :cond_1

    .line 475
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 477
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnEditor;->finish()V

    goto :goto_0

    .line 464
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
    .line 271
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 273
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->onPause()V

    .line 274
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 409
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 410
    .local v3, key:Ljava/lang/String;
    const-string v6, "auth_type"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 412
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 413
    .local v2, index:I
    iget-object v6, p0, Lcom/android/OriginalSettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v6, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 415
    iget-object v6, p0, Lcom/android/OriginalSettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f07002a

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 416
    .local v5, values:[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/OriginalSettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    aget-object v9, v5, v2

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v7

    .line 441
    .end local v2           #index:I
    .end local v5           #values:[Ljava/lang/String;
    :goto_0
    return v6

    .line 417
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/NumberFormatException;
    move v6, v8

    .line 418
    goto :goto_0

    .line 423
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_0
    const-string v6, "apn_protocol"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, p2

    .line 424
    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/OriginalSettings/ApnEditor;->protocolDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 425
    .local v4, protocol:Ljava/lang/String;
    if-nez v4, :cond_1

    move v6, v8

    .line 426
    goto :goto_0

    .line 428
    :cond_1
    iget-object v6, p0, Lcom/android/OriginalSettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 429
    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    move-object v6, p2

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v9, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 432
    .end local v4           #protocol:Ljava/lang/String;
    :cond_2
    const-string v6, "bearer"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, p2

    .line 433
    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/OriginalSettings/ApnEditor;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, bearer:Ljava/lang/String;
    if-nez v0, :cond_3

    move v6, v8

    .line 435
    goto :goto_0

    .line 437
    :cond_3
    iget-object v6, p0, Lcom/android/OriginalSettings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 438
    iget-object v6, p0, Lcom/android/OriginalSettings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v6, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .end local v0           #bearer:Ljava/lang/String;
    :cond_4
    move v6, v7

    .line 441
    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 623
    invoke-super {p0, p1, p2}, Lmiui/preference/BasePreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 625
    if-nez p1, :cond_0

    .line 626
    invoke-direct {p0}, Lcom/android/OriginalSettings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 628
    .local v0, msg:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 629
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 632
    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 264
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->onResume()V

    .line 265
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 267
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 498
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 499
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    const-string v0, "pos"

    iget-object v1, p0, Lcom/android/OriginalSettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 502
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 668
    invoke-virtual {p0, p2}, Lcom/android/OriginalSettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 669
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 670
    iget-object v1, p0, Lcom/android/OriginalSettings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 671
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 676
    :cond_0
    :goto_0
    return-void

    .line 673
    :cond_1
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
