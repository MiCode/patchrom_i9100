.class public Lcom/android/sec_settings/ApnSettings;
.super Landroid/preference/PreferenceActivity;
.source "ApnSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sec_settings/ApnSettings$4;,
        Lcom/android/sec_settings/ApnSettings$RestoreApnProcessHandler;,
        Lcom/android/sec_settings/ApnSettings$RestoreApnUiHandler;
    }
.end annotation


# static fields
.field private static final DEFAULTAPN_URI:Landroid/net/Uri;

.field private static final PREFERAPN_URI:Landroid/net/Uri;

.field private static mRestoreDefaultApnMode:Z


# instance fields
.field private hideApnList:[Ljava/lang/String;

.field private isSprHidden:Z

.field private isVzwEditable:Z

.field private mDelayHandler:Landroid/os/Handler;

.field private mDelayRunnable:Ljava/lang/Runnable;

.field private mMobileStateFilter:Landroid/content/IntentFilter;

.field private final mMobileStateReceiver:Landroid/content/BroadcastReceiver;

.field private mRestoreApnProcessHandler:Lcom/android/sec_settings/ApnSettings$RestoreApnProcessHandler;

.field private mRestoreApnUiHandler:Lcom/android/sec_settings/ApnSettings$RestoreApnUiHandler;

.field private mSelectedKey:Ljava/lang/String;

.field private final mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherStateFilter:Landroid/content/IntentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const-string v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/sec_settings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    .line 93
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/sec_settings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/sec_settings/ApnSettings;->mDelayHandler:Landroid/os/Handler;

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sec_settings/ApnSettings;->hideApnList:[Ljava/lang/String;

    .line 118
    new-instance v0, Lcom/android/sec_settings/ApnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/ApnSettings$1;-><init>(Lcom/android/sec_settings/ApnSettings;)V

    iput-object v0, p0, Lcom/android/sec_settings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    .line 162
    new-instance v0, Lcom/android/sec_settings/ApnSettings$2;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/ApnSettings$2;-><init>(Lcom/android/sec_settings/ApnSettings;)V

    iput-object v0, p0, Lcom/android/sec_settings/ApnSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 619
    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-static {p0}, Lcom/android/sec_settings/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/android/sec_settings/ApnSettings;->mRestoreDefaultApnMode:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    sput-boolean p0, Lcom/android/sec_settings/ApnSettings;->mRestoreDefaultApnMode:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/sec_settings/ApnSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/sec_settings/ApnSettings;->fillList()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/sec_settings/ApnSettings;)Lcom/android/sec_settings/ApnSettings$RestoreApnUiHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/sec_settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/sec_settings/ApnSettings$RestoreApnUiHandler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/sec_settings/ApnSettings;Lcom/android/sec_settings/ApnSettings$RestoreApnUiHandler;)Lcom/android/sec_settings/ApnSettings$RestoreApnUiHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/sec_settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/sec_settings/ApnSettings$RestoreApnUiHandler;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/sec_settings/ApnSettings;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/sec_settings/ApnSettings;->mDelayRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/sec_settings/ApnSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/sec_settings/ApnSettings;->mDelayHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/sec_settings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    return-object v0
.end method

.method private addNewApn()V
    .locals 3

    .prologue
    .line 497
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/sec_settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "vzw"

    const-string v2, "editable"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 503
    :goto_0
    return-void

    .line 502
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private fillList()V
    .locals 19

    .prologue
    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numeric=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gsm.sim.operator.numeric"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 291
    .local v4, where:Ljava/lang/String;
    const-string v1, "LGT"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "3"

    const-string v2, "ril.simtype"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 292
    const-string v4, "numeric=\"45006\""

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and carrier_enabled = 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 296
    const-string v1, "ApnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fillList: where = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_0
    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_FixApn4SpecificMccMnc"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 312
    const-string v1, "21405"

    const-string v2, "gsm.sim.operator.numeric"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 313
    const-string v4, "numeric=\"21405\""

    .line 318
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "name"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "apn"

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-string v6, "type"

    aput-object v6, v3, v5

    const/4 v5, 0x0

    const-string v6, "name ASC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 322
    .local v9, cursor:Landroid/database/Cursor;
    const-string v1, "DCM"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "VAU"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "VHA"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 323
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "name"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "apn"

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-string v6, "type"

    aput-object v6, v3, v5

    const/4 v5, 0x0

    const-string v6, "_id asc"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 328
    :cond_3
    const-string v1, "apn_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/ApnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceGroup;

    .line 329
    .local v8, apnList:Landroid/preference/PreferenceGroup;
    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 331
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .local v12, mmsApnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/sec_settings/ApnSettings;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/sec_settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 334
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 335
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 336
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 337
    .local v13, name:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 338
    .local v7, apn:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 339
    .local v11, key:Ljava/lang/String;
    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 342
    .local v18, type:Ljava/lang/String;
    const-string v1, "SKT"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "45005"

    const-string v2, "gsm.sim.operator.numeric"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "oversea"

    const-string v2, "ril.currentplmn"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "web.sktelecom.com"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "lte.sktelecom.com"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 346
    :cond_4
    const-string v7, "roaming.sktelecom.com"

    .line 351
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/sec_settings/ApnSettings;->isHideApn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 352
    const-string v1, "ApnSettings"

    const-string v2, "HideApnlist is not added"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 298
    .end local v7           #apn:Ljava/lang/String;
    .end local v8           #apnList:Landroid/preference/PreferenceGroup;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v11           #key:Ljava/lang/String;
    .end local v12           #mmsApnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    .end local v13           #name:Ljava/lang/String;
    .end local v18           #type:Ljava/lang/String;
    :cond_6
    const-string v1, "SKT"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "45005"

    const-string v2, "gsm.sim.operator.numeric"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    const-string v4, "numeric=\"45005\""

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and carrier_enabled = 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 305
    const-string v1, "ApnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fillList: where = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 315
    :cond_7
    const-string v4, "numeric=\"21407\""

    goto/16 :goto_1

    .line 359
    .restart local v7       #apn:Ljava/lang/String;
    .restart local v8       #apnList:Landroid/preference/PreferenceGroup;
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v11       #key:Ljava/lang/String;
    .restart local v12       #mmsApnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    .restart local v13       #name:Ljava/lang/String;
    .restart local v18       #type:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/sec_settings/ApnSettings;->isSprHidden:Z

    if-eqz v1, :cond_c

    .line 360
    new-instance v14, Lcom/android/sec_settings/ApnPreference;

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v1}, Lcom/android/sec_settings/ApnPreference;-><init>(Landroid/content/Context;I)V

    .line 367
    .local v14, pref:Lcom/android/sec_settings/ApnPreference;
    :goto_3
    invoke-virtual {v14, v11}, Lcom/android/sec_settings/ApnPreference;->setKey(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v14, v13}, Lcom/android/sec_settings/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 369
    invoke-virtual {v14, v7}, Lcom/android/sec_settings/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 370
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Lcom/android/sec_settings/ApnPreference;->setPersistent(Z)V

    .line 371
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/android/sec_settings/ApnPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 373
    const/16 v17, 0x1

    .line 374
    .local v17, selectable:Z
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 375
    .local v16, sales_code:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 376
    const-string v1, "ril.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 378
    :cond_9
    const-string v1, "VZW"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 379
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/sec_settings/ApnSettings;->isVzwEditable:Z

    if-eqz v1, :cond_e

    .line 380
    const/16 v17, 0x1

    .line 397
    :goto_4
    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/android/sec_settings/ApnPreference;->setSelectable(Z)V

    .line 398
    if-eqz v17, :cond_1b

    .line 399
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/sec_settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/sec_settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 400
    invoke-virtual {v14}, Lcom/android/sec_settings/ApnPreference;->setChecked()V

    .line 402
    :cond_a
    const-string v1, "CHM"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 404
    if-eqz v18, :cond_1a

    const-string v1, "cmdm"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "cmmm"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "cmmb"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "cmmail"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "cmpim"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "hipri"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 406
    :cond_b
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_2

    .line 361
    .end local v14           #pref:Lcom/android/sec_settings/ApnPreference;
    .end local v16           #sales_code:Ljava/lang/String;
    .end local v17           #selectable:Z
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/sec_settings/ApnSettings;->isVzwEditable:Z

    if-eqz v1, :cond_d

    .line 362
    new-instance v14, Lcom/android/sec_settings/ApnPreference;

    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v1}, Lcom/android/sec_settings/ApnPreference;-><init>(Landroid/content/Context;I)V

    .restart local v14       #pref:Lcom/android/sec_settings/ApnPreference;
    goto/16 :goto_3

    .line 364
    .end local v14           #pref:Lcom/android/sec_settings/ApnPreference;
    :cond_d
    new-instance v14, Lcom/android/sec_settings/ApnPreference;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/sec_settings/ApnPreference;-><init>(Landroid/content/Context;)V

    .restart local v14       #pref:Lcom/android/sec_settings/ApnPreference;
    goto/16 :goto_3

    .line 383
    .restart local v16       #sales_code:Ljava/lang/String;
    .restart local v17       #selectable:Z
    :cond_e
    if-eqz v18, :cond_f

    const-string v1, "default"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 384
    :cond_f
    const/16 v17, 0x1

    goto/16 :goto_4

    .line 386
    :cond_10
    const/16 v17, 0x0

    .line 387
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Lcom/android/sec_settings/ApnPreference;->setEnabled(Z)V

    goto/16 :goto_4

    .line 390
    :cond_11
    const-string v1, "CHM"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 391
    if-eqz v18, :cond_12

    const-string v1, "mms"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "wap"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    :cond_12
    const/16 v17, 0x1

    :goto_5
    goto/16 :goto_4

    :cond_13
    const/16 v17, 0x0

    goto :goto_5

    .line 392
    :cond_14
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_BlockToSelectDunApnType"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 393
    if-eqz v18, :cond_15

    const-string v1, "mms"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "dun"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    :cond_15
    const/16 v17, 0x1

    :goto_6
    goto/16 :goto_4

    :cond_16
    const/16 v17, 0x0

    goto :goto_6

    .line 395
    :cond_17
    if-eqz v18, :cond_18

    const-string v1, "mms"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    :cond_18
    const/16 v17, 0x1

    :goto_7
    goto/16 :goto_4

    :cond_19
    const/16 v17, 0x0

    goto :goto_7

    .line 410
    :cond_1a
    invoke-virtual {v8, v14}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 423
    :goto_8
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_2

    .line 412
    :cond_1b
    const-string v1, "CHM"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 414
    if-eqz v13, :cond_1d

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WAP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CMMMS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 416
    :cond_1c
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_2

    .line 421
    :cond_1d
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 425
    .end local v7           #apn:Ljava/lang/String;
    .end local v11           #key:Ljava/lang/String;
    .end local v13           #name:Ljava/lang/String;
    .end local v14           #pref:Lcom/android/sec_settings/ApnPreference;
    .end local v16           #sales_code:Ljava/lang/String;
    .end local v17           #selectable:Z
    .end local v18           #type:Ljava/lang/String;
    :cond_1e
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 427
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/preference/Preference;

    .line 428
    .local v15, preference:Landroid/preference/Preference;
    invoke-virtual {v8, v15}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_9

    .line 430
    .end local v15           #preference:Landroid/preference/Preference;
    :cond_1f
    return-void
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 2
    .parameter

    .prologue
    .line 176
    const-string v0, "state"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_0

    .line 178
    const-class v1, Lcom/android/internal/telephony/Phone$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone$DataState;

    .line 180
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0
.end method

.method private getSelectedApnKey()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 563
    const/4 v7, 0x0

    .line 565
    .local v7, key:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/sec_settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/sec_settings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v8

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 567
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 568
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 569
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 571
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 572
    return-object v7
.end method

.method private isHideApn(Ljava/lang/String;)Z
    .locals 7
    .parameter "apn"

    .prologue
    .line 273
    const/4 v4, 0x0

    .line 274
    .local v4, ret:Z
    iget-object v6, p0, Lcom/android/sec_settings/ApnSettings;->hideApnList:[Ljava/lang/String;

    if-nez v6, :cond_0

    move v5, v4

    .line 282
    .end local v4           #ret:Z
    .local v5, ret:I
    :goto_0
    return v5

    .line 276
    .end local v5           #ret:I
    .restart local v4       #ret:Z
    :cond_0
    iget-object v0, p0, Lcom/android/sec_settings/ApnSettings;->hideApnList:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 277
    .local v2, item:Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 278
    const/4 v4, 0x1

    .end local v2           #item:Ljava/lang/String;
    :cond_1
    move v5, v4

    .line 282
    .restart local v5       #ret:I
    goto :goto_0

    .line 276
    .end local v5           #ret:I
    .restart local v2       #item:Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private restoreDefaultApn()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 576
    const/16 v1, 0x3e9

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/ApnSettings;->showDialog(I)V

    .line 577
    sput-boolean v4, Lcom/android/sec_settings/ApnSettings;->mRestoreDefaultApnMode:Z

    .line 579
    iget-object v1, p0, Lcom/android/sec_settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/sec_settings/ApnSettings$RestoreApnUiHandler;

    if-nez v1, :cond_0

    .line 580
    new-instance v1, Lcom/android/sec_settings/ApnSettings$RestoreApnUiHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/sec_settings/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/sec_settings/ApnSettings;Lcom/android/sec_settings/ApnSettings$1;)V

    iput-object v1, p0, Lcom/android/sec_settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/sec_settings/ApnSettings$RestoreApnUiHandler;

    .line 583
    :cond_0
    iget-object v1, p0, Lcom/android/sec_settings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/sec_settings/ApnSettings$RestoreApnProcessHandler;

    if-nez v1, :cond_1

    .line 584
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Restore default APN Handler: Process Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 586
    .local v0, restoreDefaultApnThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 587
    new-instance v1, Lcom/android/sec_settings/ApnSettings$RestoreApnProcessHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/sec_settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/sec_settings/ApnSettings$RestoreApnUiHandler;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/sec_settings/ApnSettings$RestoreApnProcessHandler;-><init>(Lcom/android/sec_settings/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/sec_settings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/sec_settings/ApnSettings$RestoreApnProcessHandler;

    .line 591
    .end local v0           #restoreDefaultApnThread:Landroid/os/HandlerThread;
    :cond_1
    iget-object v1, p0, Lcom/android/sec_settings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/sec_settings/ApnSettings$RestoreApnProcessHandler;

    invoke-virtual {v1, v4}, Lcom/android/sec_settings/ApnSettings$RestoreApnProcessHandler;->sendEmptyMessage(I)Z

    .line 593
    return v4
.end method

.method private setSelectedApnKey(Ljava/lang/String;)V
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 554
    iput-object p1, p0, Lcom/android/sec_settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 555
    invoke-virtual {p0}, Lcom/android/sec_settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 557
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 558
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "apn_id"

    iget-object v3, p0, Lcom/android/sec_settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    sget-object v2, Lcom/android/sec_settings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 560
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/sec_settings/ApnSettings;->mDelayRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 269
    :goto_0
    return-void

    .line 268
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 186
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 188
    const v4, 0x7f07000f

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/ApnSettings;->addPreferencesFromResource(I)V

    .line 189
    invoke-virtual {p0}, Lcom/android/sec_settings/ApnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 191
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/sec_settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    .line 196
    iget-object v4, p0, Lcom/android/sec_settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.SIM_PROFILE_UPDATE_DONE"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    iget-object v4, p0, Lcom/android/sec_settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.ACTION_DATA_SET_ATTACH_APN_DONE"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Settings_CSCDisable"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 201
    iget-object v4, p0, Lcom/android/sec_settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.CSC_CONNECTION_RESET_DONE"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    :cond_0
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/sec_settings/ApnSettings;->mTetherStateFilter:Landroid/content/IntentFilter;

    .line 206
    invoke-virtual {p0}, Lcom/android/sec_settings/ApnSettings;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 207
    .local v3, tempIntent:Landroid/content/Intent;
    const-string v4, "keyString"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, strName:Ljava/lang/String;
    const-string v4, "vzw"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, strNameVzw:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 210
    iput-boolean v7, p0, Lcom/android/sec_settings/ApnSettings;->isSprHidden:Z

    .line 213
    :goto_0
    if-nez v2, :cond_3

    .line 214
    iput-boolean v7, p0, Lcom/android/sec_settings/ApnSettings;->isVzwEditable:Z

    .line 219
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Setting_HideApnList"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 220
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Setting_HideApnList"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, hideApnString:Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/sec_settings/ApnSettings;->hideApnList:[Ljava/lang/String;

    .line 222
    iget-object v4, p0, Lcom/android/sec_settings/ApnSettings;->hideApnList:[Ljava/lang/String;

    if-nez v4, :cond_1

    .line 223
    new-array v4, v6, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/sec_settings/ApnSettings;->hideApnList:[Ljava/lang/String;

    .line 224
    iget-object v4, p0, Lcom/android/sec_settings/ApnSettings;->hideApnList:[Ljava/lang/String;

    aput-object v0, v4, v7

    .line 228
    .end local v0           #hideApnString:Ljava/lang/String;
    :cond_1
    return-void

    .line 212
    :cond_2
    iput-boolean v6, p0, Lcom/android/sec_settings/ApnSettings;->isSprHidden:Z

    goto :goto_0

    .line 216
    :cond_3
    iput-boolean v6, p0, Lcom/android/sec_settings/ApnSettings;->isVzwEditable:Z

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 660
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_0

    .line 661
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 662
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/android/sec_settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090512

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 663
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 666
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const v6, 0x7f09050a

    const v3, 0x7f020178

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 434
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 435
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, sales_code:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    const-string v1, "ril.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 439
    :cond_0
    const-string v1, "VZW"

    invoke-static {}, Lcom/android/sec_settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 440
    iget-boolean v1, p0, Lcom/android/sec_settings/ApnSettings;->isVzwEditable:Z

    if-eqz v1, :cond_1

    .line 441
    invoke-virtual {p0}, Lcom/android/sec_settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v5, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 458
    :cond_1
    :goto_0
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/android/sec_settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090513

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020179

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 461
    return v5

    .line 445
    :cond_2
    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 446
    const-string v1, "3"

    const-string v2, "ril.simtype"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 447
    invoke-virtual {p0}, Lcom/android/sec_settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v5, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 452
    :cond_3
    iget-boolean v1, p0, Lcom/android/sec_settings/ApnSettings;->isSprHidden:Z

    if-nez v1, :cond_1

    .line 453
    invoke-virtual {p0}, Lcom/android/sec_settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v5, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 484
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 493
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 486
    :pswitch_0
    invoke-direct {p0}, Lcom/android/sec_settings/ApnSettings;->addNewApn()V

    goto :goto_0

    .line 490
    :pswitch_1
    invoke-direct {p0}, Lcom/android/sec_settings/ApnSettings;->restoreDefaultApn()Z

    goto :goto_0

    .line 484
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 251
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 253
    iget-object v0, p0, Lcom/android/sec_settings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/ApnSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 254
    iget-object v0, p0, Lcom/android/sec_settings/ApnSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/ApnSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 256
    iget-object v0, p0, Lcom/android/sec_settings/ApnSettings;->mDelayRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/sec_settings/ApnSettings;->mDelayHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/sec_settings/ApnSettings;->mDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sec_settings/ApnSettings;->mDelayRunnable:Ljava/lang/Runnable;

    .line 260
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 523
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange(): Preference - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 527
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/sec_settings/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    .line 550
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 516
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 517
    .local v0, pos:I
    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, v0

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 518
    .local v1, url:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 519
    const/4 v2, 0x1

    return v2
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 671
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 672
    invoke-virtual {p0}, Lcom/android/sec_settings/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 674
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 472
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 232
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 234
    iget-object v0, p0, Lcom/android/sec_settings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/sec_settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/sec_settings/ApnSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 235
    iget-object v0, p0, Lcom/android/sec_settings/ApnSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/sec_settings/ApnSettings;->mTetherStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/sec_settings/ApnSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 237
    sget-boolean v0, Lcom/android/sec_settings/ApnSettings;->mRestoreDefaultApnMode:Z

    if-nez v0, :cond_0

    .line 238
    invoke-direct {p0}, Lcom/android/sec_settings/ApnSettings;->fillList()V

    .line 247
    :goto_0
    return-void

    .line 240
    :cond_0
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/ApnSettings;->showDialog(I)V

    goto :goto_0
.end method
