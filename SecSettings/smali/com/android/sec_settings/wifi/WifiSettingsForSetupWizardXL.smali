.class public Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;
.super Landroid/app/Activity;
.source "WifiSettingsForSetupWizardXL.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DEBUG:Z

.field private static final sNetworkStateMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Landroid/net/NetworkInfo$DetailedState;",
            "Landroid/net/NetworkInfo$DetailedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAddNetworkButton:Landroid/widget/Button;

.field private mBackButton:Landroid/widget/Button;

.field private mBottomPadding:Landroid/view/View;

.field private mChannel:Landroid/net/wifi/WifiManager$Channel;

.field private mConnectButton:Landroid/widget/Button;

.field private mConnectingStatusLayout:Landroid/view/View;

.field private mConnectingStatusView:Landroid/widget/TextView;

.field private mContentPadding:Landroid/view/View;

.field private mEditingTitle:Ljava/lang/CharSequence;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mNetworkName:Ljava/lang/CharSequence;

.field private mPreviousNetworkState:Landroid/net/NetworkInfo$DetailedState;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRefreshButton:Landroid/widget/Button;

.field private mScreenState:I

.field private mSkipOrNextButton:Landroid/widget/Button;

.field private mTitleView:Landroid/widget/TextView;

.field private mTopDividerNoProgress:Landroid/view/View;

.field private mTopPadding:Landroid/view/View;

.field private mWifiConfig:Lcom/android/sec_settings/wifi/WifiConfigUiForSetupWizardXL;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiSettings:Lcom/android/sec_settings/wifi/WifiSettings;

.field private mWifiSettingsFragmentLayout:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 55
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->DEBUG:Z

    .line 61
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    .line 65
    sget-object v0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 139
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mPreviousNetworkState:Landroid/net/NetworkInfo$DetailedState;

    return-void
.end method

.method private hideSoftwareKeyboard()V
    .locals 4

    .prologue
    .line 255
    sget-boolean v1, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SetupWizard"

    const-string v2, "Hiding software keyboard."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 257
    .local v0, focusedView:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 258
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 260
    :cond_1
    return-void
.end method

.method private initViews()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 172
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 174
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "firstRun"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    const v2, 0x7f0b00a4

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 176
    .local v1, layoutRoot:Landroid/view/View;
    const/high16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 178
    .end local v1           #layoutRoot:Landroid/view/View;
    :cond_0
    const-string v2, "extra_prefs_landscape_lock"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 179
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->setRequestedOrientation(I)V

    .line 181
    :cond_1
    const-string v2, "extra_prefs_portrait_lock"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 182
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->setRequestedOrientation(I)V

    .line 185
    :cond_2
    const v2, 0x7f0b03a8

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    .line 186
    const v2, 0x7f0b03a9

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    .line 187
    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 188
    const v2, 0x7f0b03aa

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mTopDividerNoProgress:Landroid/view/View;

    .line 189
    const v2, 0x7f0b03b3

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mBottomPadding:Landroid/view/View;

    .line 191
    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 192
    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 193
    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mTopDividerNoProgress:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 195
    const v2, 0x7f0b03b5

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    .line 196
    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    const v2, 0x7f0b03b9

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    .line 198
    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    const v2, 0x7f0b03b8

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    .line 200
    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    const v2, 0x7f0b03b7

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    .line 202
    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    const v2, 0x7f0b03b6

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    .line 204
    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    const v2, 0x7f0b03a7

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mTopPadding:Landroid/view/View;

    .line 207
    const v2, 0x7f0b03ac

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mContentPadding:Landroid/view/View;

    .line 209
    const v2, 0x7f0b03ad

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    .line 210
    const v2, 0x7f0b03b0

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusLayout:Landroid/view/View;

    .line 211
    const v2, 0x7f0b03b1

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusView:Landroid/widget/TextView;

    .line 212
    return-void
.end method

.method private onAddNetworkButtonPressed()V
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/sec_settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/WifiSettings;->onAddNetworkPressed()V

    .line 424
    return-void
.end method

.method private onBackButtonPressed()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 585
    iget v4, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    if-eq v4, v11, :cond_0

    iget v4, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    .line 586
    :cond_0
    sget-boolean v4, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "SetupWizard"

    const-string v5, "Back button pressed after connect action."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_1
    iput v8, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 591
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->restoreFirstVisibilityState()V

    .line 593
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 594
    invoke-virtual {p0, v8}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->changeNextButtonState(Z)V

    .line 598
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->showScanningState()V

    .line 602
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 603
    .local v1, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 604
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    sget-boolean v4, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 605
    const-string v4, "SetupWizard"

    const-string v5, "forgeting Wi-Fi network \"%s\" (id: %d)"

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v7, v6, v8

    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_2
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    new-instance v7, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL$1;

    invoke-direct {v7, p0}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL$1;-><init>(Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;)V

    invoke-virtual {v4, v5, v6, v7}, Landroid/net/wifi/WifiManager;->forget(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 617
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_3
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 618
    invoke-direct {p0, v9}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->refreshAccessPoints(Z)V

    .line 633
    .end local v1           #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :goto_1
    invoke-virtual {p0, v8}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 634
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusLayout:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 635
    const v4, 0x7f0b03af

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 636
    .local v3, parent:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 637
    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 638
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/sec_settings/wifi/WifiConfigUiForSetupWizardXL;

    .line 639
    return-void

    .line 620
    .end local v3           #parent:Landroid/view/ViewGroup;
    :cond_4
    iput v8, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 621
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/sec_settings/wifi/WifiSettings;

    invoke-virtual {v4}, Lcom/android/sec_settings/wifi/WifiSettings;->resumeWifiScan()V

    .line 623
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->restoreFirstVisibilityState()V

    .line 625
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 626
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 627
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 628
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedProgressBar()V

    .line 629
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 630
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mBottomPadding:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private onEapNetworkSelected()V
    .locals 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 543
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    const v1, 0x7f090780

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 544
    return-void
.end method

.method private refreshAccessPoints(Z)V
    .locals 1
    .parameter "disconnectNetwork"

    .prologue
    .line 678
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->showScanningState()V

    .line 680
    if-eqz p1, :cond_0

    .line 681
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/sec_settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/WifiSettings;->refreshAccessPoints()V

    .line 685
    return-void
.end method

.method private restoreFirstVisibilityState()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 215
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->showDefaultTitle()V

    .line 216
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 221
    invoke-virtual {p0, v1}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 222
    return-void
.end method

.method private showConnectingProgressBar()V
    .locals 2

    .prologue
    .line 757
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->showTopDividerWithProgressBar()V

    .line 758
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 759
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 760
    return-void
.end method

.method private showConnectingState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 319
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 321
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mEditingTitle:Ljava/lang/CharSequence;

    .line 324
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->showConnectingTitle()V

    .line 325
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->showConnectingProgressBar()V

    .line 327
    invoke-virtual {p0, v1}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 328
    return-void
.end method

.method private showConnectingTitle()V
    .locals 5

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/sec_settings/wifi/WifiConfigUiForSetupWizardXL;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/sec_settings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/sec_settings/wifi/WifiConfigController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/sec_settings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/sec_settings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/sec_settings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/sec_settings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    .line 387
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f090778

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    return-void

    .line 383
    :cond_1
    const-string v0, "SetupWizard"

    const-string v1, "Unexpected null found (WifiController or WifiConfig is null). Ignore them."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showDefaultTitle()V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f090776

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    return-void
.end method

.method private showDisconnectedProgressBar()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 733
    iget v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    if-nez v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 735
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 736
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mTopDividerNoProgress:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 743
    :goto_0
    return-void

    .line 738
    :cond_0
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 739
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 740
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 741
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mTopDividerNoProgress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showScanningProgressBar()V
    .locals 2

    .prologue
    .line 749
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->showTopDividerWithProgressBar()V

    .line 750
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 751
    return-void
.end method

.method private showScanningState()V
    .locals 2

    .prologue
    .line 417
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 418
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 419
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->showScanningProgressBar()V

    .line 420
    return-void
.end method

.method private showTopDividerWithProgressBar()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 411
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mTopDividerNoProgress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mBottomPadding:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 414
    return-void
.end method


# virtual methods
.method changeNextButtonState(Z)V
    .locals 2
    .parameter "connected"

    .prologue
    .line 645
    if-eqz p1, :cond_0

    .line 646
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    const v1, 0x7f09077f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 650
    :goto_0
    return-void

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    const v1, 0x7f09077e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method initSecurityFields(Landroid/view/View;I)Z
    .locals 6
    .parameter "view"
    .parameter "accessPointSecurity"

    .prologue
    const v5, 0x7f0b034d

    const v4, 0x7f0b034c

    const/4 v1, 0x1

    const/16 v3, 0x8

    const/4 v0, 0x0

    .line 495
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 496
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 497
    const v2, 0x7f0b034f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 498
    const v2, 0x7f0b0350

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 500
    const/4 v2, 0x3

    if-ne p2, v2, :cond_1

    .line 501
    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 502
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->hideSoftwareKeyboard()V

    .line 507
    const v1, 0x7f0b034e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 508
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 513
    :goto_0
    const v1, 0x7f0b0351

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 514
    const v1, 0x7f0b034f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 515
    const v1, 0x7f0b0350

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 516
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->onEapNetworkSelected()V

    .line 538
    :goto_1
    return v0

    .line 511
    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 522
    :cond_1
    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 523
    invoke-virtual {p0, v3}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 528
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/sec_settings/wifi/WifiConfigUiForSetupWizardXL;

    if-eqz v0, :cond_3

    .line 529
    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    if-ne p2, v1, :cond_4

    .line 531
    :cond_2
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/sec_settings/wifi/WifiConfigUiForSetupWizardXL;

    const v2, 0x7f0b02e8

    invoke-virtual {v0, v2}, Lcom/android/sec_settings/wifi/WifiConfigUiForSetupWizardXL;->requestFocusAndShowKeyboard(I)V

    :cond_3
    :goto_2
    move v0, v1

    .line 538
    goto :goto_1

    .line 533
    :cond_4
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/sec_settings/wifi/WifiConfigUiForSetupWizardXL;

    const v2, 0x7f0b032e

    invoke-virtual {v0, v2}, Lcom/android/sec_settings/wifi/WifiConfigUiForSetupWizardXL;->requestFocusAndShowKeyboard(I)V

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    .line 226
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->hideSoftwareKeyboard()V

    .line 227
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 228
    sget-boolean v0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SetupWizard"

    const-string v1, "AddNetwork button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_0
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->onAddNetworkButtonPressed()V

    .line 252
    .end local p1
    :cond_1
    :goto_0
    return-void

    .line 230
    .restart local p1
    :cond_2
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 231
    sget-boolean v0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "SetupWizard"

    const-string v1, "Refresh button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->refreshAccessPoints(Z)V

    goto :goto_0

    .line 233
    :cond_4
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_7

    .line 234
    sget-boolean v0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "SetupWizard"

    const-string v1, "Skip/Next button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_5
    const v0, 0x7f09077e

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast p1, Landroid/widget/Button;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 238
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 240
    invoke-virtual {p0, v2}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->setResult(I)V

    .line 244
    :goto_1
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->finish()V

    goto :goto_0

    .line 242
    :cond_6
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->setResult(I)V

    goto :goto_1

    .line 245
    .restart local p1
    :cond_7
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_9

    .line 246
    sget-boolean v0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->DEBUG:Z

    if-eqz v0, :cond_8

    const-string v0, "SetupWizard"

    const-string v1, "Connect button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_8
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->onConnectButtonPressed()V

    goto :goto_0

    .line 248
    :cond_9
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 249
    sget-boolean v0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->DEBUG:Z

    if-eqz v0, :cond_a

    const-string v0, "SetupWizard"

    const-string v1, "Back button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_a
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->onBackButtonPressed()V

    goto :goto_0
.end method

.method onConnectButtonPressed()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 555
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 557
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/sec_settings/wifi/WifiSettings;

    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/sec_settings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v2}, Lcom/android/sec_settings/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/sec_settings/wifi/WifiConfigController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/sec_settings/wifi/WifiSettings;->submit(Lcom/android/sec_settings/wifi/WifiConfigController;)V

    .line 565
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->showConnectingState()V

    .line 568
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 569
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    const v2, 0x7f090780

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 571
    const v1, 0x7f0b03af

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 572
    .local v0, parent:Landroid/view/ViewGroup;
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 573
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 574
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusView:Landroid/widget/TextView;

    const v2, 0x7f090790

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 576
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 577
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 578
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 579
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 580
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 581
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 143
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 151
    invoke-virtual {p0, v3}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->requestWindowFeature(I)Z

    .line 152
    const v0, 0x7f04012f

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->setContentView(I)V

    .line 154
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 155
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/net/wifi/WifiManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/WifiManager$ChannelListener;)Landroid/net/wifi/WifiManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    .line 158
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 160
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0b03ae

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/wifi/WifiSettings;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/sec_settings/wifi/WifiSettings;

    .line 162
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 164
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->initViews()V

    .line 168
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->showScanningState()V

    .line 169
    return-void
.end method

.method setPaddingVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 726
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mTopPadding:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 727
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->mContentPadding:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 728
    return-void
.end method
