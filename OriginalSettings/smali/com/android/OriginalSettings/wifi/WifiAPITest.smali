.class public Lcom/android/settings/wifi/WifiAPITest;
.super Landroid/preference/PreferenceActivity;
.source "WifiAPITest.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private dialog:Landroid/app/AlertDialog;

.field private mWifiDisableNetwork:Landroid/preference/Preference;

.field private mWifiDisconnect:Landroid/preference/Preference;

.field private mWifiEnableNetwork:Landroid/preference/Preference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private netid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiAPITest;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAPITest;->dialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiAPITest;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/settings/wifi/WifiAPITest;->netid:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/WifiAPITest;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/android/settings/wifi/WifiAPITest;->netid:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiAPITest;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private onCreatePreferences()V
    .locals 2

    .prologue
    .line 77
    const v1, 0x7f040118

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiAPITest;->addPreferencesFromResource(I)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiAPITest;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 81
    .local v0, preferenceScreen:Landroid/preference/PreferenceScreen;
    const-string v1, "disconnect"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiDisconnect:Landroid/preference/Preference;

    .line 82
    iget-object v1, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiDisconnect:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 84
    const-string v1, "disable_network"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiDisableNetwork:Landroid/preference/Preference;

    .line 85
    iget-object v1, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiDisableNetwork:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 87
    const-string v1, "enable_network"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiEnableNetwork:Landroid/preference/Preference;

    .line 88
    iget-object v1, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiEnableNetwork:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 90
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiAPITest;->onCreatePreferences()V

    .line 72
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiAPITest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 73
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .parameter "pref"

    .prologue
    .line 106
    iget-object v3, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiDisconnect:Landroid/preference/Preference;

    if-ne p1, v3, :cond_1

    .line 107
    iget-object v3, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 170
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 108
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiDisableNetwork:Landroid/preference/Preference;

    if-eq p1, v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiEnableNetwork:Landroid/preference/Preference;

    if-ne p1, v3, :cond_0

    .line 109
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 110
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    const-string v3, "Input"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 111
    const-string v3, "Enter Network ID"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 113
    new-instance v2, Lcom/android/settings/wifi/WifiAPITest$1;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiAPITest$1;-><init>(Lcom/android/settings/wifi/WifiAPITest;)V

    .line 129
    .local v2, networkIdWatcher:Landroid/text/TextWatcher;
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 130
    .local v1, input:Landroid/widget/EditText;
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 131
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 132
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 133
    iget-object v3, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiDisableNetwork:Landroid/preference/Preference;

    if-ne p1, v3, :cond_3

    .line 134
    const-string v3, "Ok"

    new-instance v4, Lcom/android/settings/wifi/WifiAPITest$2;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/wifi/WifiAPITest$2;-><init>(Lcom/android/settings/wifi/WifiAPITest;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 157
    :goto_1
    const-string v3, "Cancel"

    new-instance v4, Lcom/android/settings/wifi/WifiAPITest$4;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/WifiAPITest$4;-><init>(Lcom/android/settings/wifi/WifiAPITest;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 162
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiAPITest;->dialog:Landroid/app/AlertDialog;

    .line 163
    iget-object v3, p0, Lcom/android/settings/wifi/WifiAPITest;->dialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/android/settings/wifi/WifiAPITest$5;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/WifiAPITest$5;-><init>(Lcom/android/settings/wifi/WifiAPITest;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 168
    iget-object v3, p0, Lcom/android/settings/wifi/WifiAPITest;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 146
    :cond_3
    const-string v3, "Ok"

    new-instance v4, Lcom/android/settings/wifi/WifiAPITest$3;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/wifi/WifiAPITest$3;-><init>(Lcom/android/settings/wifi/WifiAPITest;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 98
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 99
    const/4 v0, 0x0

    return v0
.end method
