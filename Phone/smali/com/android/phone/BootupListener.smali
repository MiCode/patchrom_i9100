.class public Lcom/android/phone/BootupListener;
.super Landroid/content/BroadcastReceiver;
.source "BootupListener.java"


# instance fields
.field private final FACTORYMODE_KEY:Ljava/lang/String;

.field private final IMSI_key:Ljava/lang/String;

.field private final salesCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 42
    const-string v0, "ril.IMSI"

    iput-object v0, p0, Lcom/android/phone/BootupListener;->IMSI_key:Ljava/lang/String;

    .line 43
    const-string v0, "999999999999999"

    iput-object v0, p0, Lcom/android/phone/BootupListener;->FACTORYMODE_KEY:Ljava/lang/String;

    .line 44
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/BootupListener;->salesCode:Ljava/lang/String;

    return-void
.end method

.method private getIccid(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 1
    .parameter "tm"

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, iccid:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 102
    :cond_0
    return-object v0
.end method

.method private getIccidPreference(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 2
    .parameter "sp"

    .prologue
    const/4 v0, 0x0

    .line 91
    if-eqz p1, :cond_0

    .line 92
    const-string v1, "sim_iccid"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    :cond_0
    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 47
    const-string v0, "bootupListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IMSI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ril.IMSI"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const-string v0, "bootup_data_connection_popup"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ril.IMSI"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "999999999999999"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v2, :cond_3

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 51
    const-string v0, "Receiver IN"

    const-string v3, "========= BootupListener ============="

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 55
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-eq v3, v2, :cond_3

    .line 57
    const-string v3, "pref_first_Time_boot"

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 58
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 60
    invoke-direct {p0, v3}, Lcom/android/phone/BootupListener;->getIccidPreference(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v3

    .line 61
    if-nez v3, :cond_0

    .line 62
    const-string v5, "bootupListener"

    const-string v6, "========= iccidPref is null ============="

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/phone/BootupListener;->getIccid(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v5

    .line 66
    if-nez v5, :cond_1

    .line 67
    const-string v0, "bootupListener"

    const-string v6, "========= iccid is null ============="

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_1
    if-eqz v3, :cond_2

    if-eqz v5, :cond_4

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 73
    :cond_2
    const-string v0, "bootupListener"

    const-string v1, "========= New SIM ============="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 77
    :goto_0
    if-eqz v0, :cond_3

    if-eqz v5, :cond_3

    .line 78
    const-string v0, "sim_iccid"

    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 79
    const-string v0, "bootupListener"

    const-string v1, "========= New SIM ICCID added to preferences ============="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/FlatRateAlertActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 84
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 88
    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_0
.end method
