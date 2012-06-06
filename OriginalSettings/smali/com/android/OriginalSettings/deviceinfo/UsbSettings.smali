.class public Lcom/android/OriginalSettings/deviceinfo/UsbSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "UsbSettings.java"


# instance fields
.field private mMtp:Landroid/preference/CheckBoxPreference;

.field private mPtp:Landroid/preference/CheckBoxPreference;

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 53
    new-instance v0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/deviceinfo/UsbSettings$1;-><init>(Lcom/android/OriginalSettings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/deviceinfo/UsbSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 61
    .local v0, root:Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 64
    :cond_0
    const v1, 0x7f050042

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->addPreferencesFromResource(I)V

    .line 65
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 67
    const-string v1, "usb_mtp"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    .line 68
    const-string v1, "usb_ptp"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    .line 70
    return-object v0
.end method

.method private updateToggles(Ljava/lang/String;)V
    .locals 3
    .parameter "function"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 99
    const-string v0, "mtp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 101
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 109
    :goto_0
    return-void

    .line 102
    :cond_0
    const-string v0, "ptp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 104
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 107
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const-string v0, "usb"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 77
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 82
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 83
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    .line 116
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v3

    .line 121
    :cond_1
    instance-of v1, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    move-object v0, p2

    .line 122
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 123
    .local v0, checkBox:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2

    .line 124
    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 128
    .end local v0           #checkBox:Landroid/preference/CheckBoxPreference;
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_3

    .line 129
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "mtp"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 130
    const-string v1, "mtp"

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_3
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "ptp"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 133
    const-string v1, "ptp"

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 87
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 91
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 94
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    return-void
.end method
