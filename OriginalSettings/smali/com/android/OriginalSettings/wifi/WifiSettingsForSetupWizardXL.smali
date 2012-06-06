.class public Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;
.super Lcom/android/OriginalSettings/BaseActivity;
.source "WifiSettingsForSetupWizardXL.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL$1;,
        Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL$WifiServiceHandler;
    }
.end annotation


# static fields
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

.field private mWifiConfig:Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiSettings:Lcom/android/OriginalSettings/wifi/WifiSettings;

.field private mWifiSettingsFragmentLayout:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    .line 65
    sget-object v0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

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
    invoke-direct {p0}, Lcom/android/OriginalSettings/BaseActivity;-><init>()V

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 138
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mPreviousNetworkState:Landroid/net/NetworkInfo$DetailedState;

    .line 215
    return-void
.end method

.method private hideSoftwareKeyboard()V
    .locals 4

    .prologue
    .line 275
    const-string v1, "SetupWizard"

    const-string v2, "Hiding software keyboard."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 277
    .local v0, focusedView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 278
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 280
    :cond_0
    return-void
.end method

.method private initViews()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 173
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 175
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "firstRun"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    const v2, 0x7f080078

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 177
    .local v1, layoutRoot:Landroid/view/View;
    const/high16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 179
    .end local v1           #layoutRoot:Landroid/view/View;
    :cond_0
    const-string v2, "extra_prefs_landscape_lock"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 180
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->setRequestedOrientation(I)V

    .line 182
    :cond_1
    const-string v2, "extra_prefs_portrait_lock"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 183
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->setRequestedOrientation(I)V

    .line 186
    :cond_2
    const v2, 0x7f08024b

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    .line 187
    const v2, 0x7f08024c

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    .line 188
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 189
    const v2, 0x7f08024d

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mTopDividerNoProgress:Landroid/view/View;

    .line 190
    const v2, 0x7f080256

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mBottomPadding:Landroid/view/View;

    .line 192
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 193
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 194
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mTopDividerNoProgress:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 196
    const v2, 0x7f080258

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    .line 197
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    const v2, 0x7f08025c

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    .line 199
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    const v2, 0x7f08025b

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    .line 201
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    const v2, 0x7f08025a

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    .line 203
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    const v2, 0x7f080259

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    .line 205
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    const v2, 0x7f08024a

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mTopPadding:Landroid/view/View;

    .line 208
    const v2, 0x7f08024f

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mContentPadding:Landroid/view/View;

    .line 210
    const v2, 0x7f080250

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    .line 211
    const v2, 0x7f080253

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusLayout:Landroid/view/View;

    .line 212
    const v2, 0x7f080254

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusView:Landroid/widget/TextView;

    .line 213
    return-void
.end method

.method private onAddNetworkButtonPressed()V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/OriginalSettings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->onAddNetworkPressed()V

    .line 444
    return-void
.end method

.method private onAuthenticationFailure()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 717
    iput v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 719
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 720
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 721
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 723
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mEditingTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 724
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mEditingTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 730
    :goto_0
    const v1, 0x7f080252

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 731
    .local v0, parent:Landroid/view/ViewGroup;
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 732
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 734
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedProgressBar()V

    .line 735
    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 736
    return-void

    .line 726
    .end local v0           #parent:Landroid/view/ViewGroup;
    :cond_0
    const-string v1, "SetupWizard"

    const-string v2, "Title during editing/adding a network was empty."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->showEditingTitle()V

    goto :goto_0
.end method

.method private onBackButtonPressed()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 605
    iget v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    if-eq v4, v11, :cond_0

    iget v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 606
    :cond_0
    const-string v4, "SetupWizard"

    const-string v5, "Back button pressed after connect action."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iput v8, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 611
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->restoreFirstVisibilityState()V

    .line 613
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 614
    invoke-virtual {p0, v8}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->changeNextButtonState(Z)V

    .line 618
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->showScanningState()V

    .line 622
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 623
    .local v1, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 625
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
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

    .line 628
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager;->forgetNetwork(I)V

    goto :goto_0

    .line 631
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_1
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 632
    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->refreshAccessPoints(Z)V

    .line 647
    .end local v1           #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :goto_1
    invoke-virtual {p0, v8}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 648
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusLayout:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 649
    const v4, 0x7f080252

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 650
    .local v3, parent:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 651
    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 652
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;

    .line 653
    return-void

    .line 634
    .end local v3           #parent:Landroid/view/ViewGroup;
    :cond_2
    iput v8, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 635
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/OriginalSettings/wifi/WifiSettings;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/wifi/WifiSettings;->resumeWifiScan()V

    .line 637
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->restoreFirstVisibilityState()V

    .line 639
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 640
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 641
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 642
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedProgressBar()V

    .line 643
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 644
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mBottomPadding:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private onEapNetworkSelected()V
    .locals 2

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 563
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    const v1, 0x7f0b05ee

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 564
    return-void
.end method

.method private refreshAccessPoints(Z)V
    .locals 1
    .parameter "disconnectNetwork"

    .prologue
    .line 692
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->showScanningState()V

    .line 694
    if-eqz p1, :cond_0

    .line 695
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/OriginalSettings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->refreshAccessPoints()V

    .line 699
    return-void
.end method

.method private restoreFirstVisibilityState()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 235
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->showDefaultTitle()V

    .line 236
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 241
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 242
    return-void
.end method

.method private showAddNetworkTitle()V
    .locals 2

    .prologue
    .line 380
    const-string v0, ""

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    .line 381
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f0b05e8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 382
    return-void
.end method

.method private showConnectedProgressBar()V
    .locals 2

    .prologue
    .line 777
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->showTopDividerWithProgressBar()V

    .line 778
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 779
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 780
    return-void
.end method

.method private showConnectedState()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 354
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 356
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->hideSoftwareKeyboard()V

    .line 357
    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 359
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->showConnectedTitle()V

    .line 360
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->showConnectedProgressBar()V

    .line 362
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 363
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusView:Landroid/widget/TextView;

    const v1, 0x7f0b05ff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 366
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    const v1, 0x7f0b05ee

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 371
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 372
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 373
    return-void
.end method

.method private showConnectedTitle()V
    .locals 5

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/OriginalSettings/wifi/WifiConfigController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/OriginalSettings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/OriginalSettings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    .line 420
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f0b05e7

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    return-void

    .line 416
    :cond_1
    const-string v0, "SetupWizard"

    const-string v1, "Unexpected null found (WifiController or WifiConfig is null). Ignore them."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showConnectingProgressBar()V
    .locals 2

    .prologue
    .line 771
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->showTopDividerWithProgressBar()V

    .line 772
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 773
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 774
    return-void
.end method

.method private showConnectingState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 339
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 341
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 343
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mEditingTitle:Ljava/lang/CharSequence;

    .line 344
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->showConnectingTitle()V

    .line 345
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->showConnectingProgressBar()V

    .line 347
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 348
    return-void
.end method

.method private showConnectingTitle()V
    .locals 5

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/OriginalSettings/wifi/WifiConfigController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/OriginalSettings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/OriginalSettings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    .line 407
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f0b05e6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    return-void

    .line 403
    :cond_1
    const-string v0, "SetupWizard"

    const-string v1, "Unexpected null found (WifiController or WifiConfig is null). Ignore them."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showDefaultTitle()V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f0b05e4

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    return-void
.end method

.method private showDisconnectedProgressBar()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 747
    iget v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    if-nez v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 749
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 750
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mTopDividerNoProgress:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 757
    :goto_0
    return-void

    .line 752
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 753
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 754
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 755
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mTopDividerNoProgress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showDisconnectedState(Ljava/lang/String;)V
    .locals 3
    .parameter "stateString"

    .prologue
    const/4 v2, 0x1

    .line 328
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedProgressBar()V

    .line 329
    iget v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/OriginalSettings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getAccessPointsCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mBottomPadding:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 335
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 336
    return-void
.end method

.method private showEditingButtonState()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 567
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 568
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 569
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 570
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 571
    return-void
.end method

.method private showEditingTitle()V
    .locals 5

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/OriginalSettings/wifi/WifiConfigController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/OriginalSettings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/OriginalSettings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    .line 394
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f0b05e5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    return-void

    .line 390
    :cond_1
    const-string v0, "SetupWizard"

    const-string v1, "Unexpected null found (WifiController or WifiConfig is null). Ignore them."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showScanningProgressBar()V
    .locals 2

    .prologue
    .line 763
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->showTopDividerWithProgressBar()V

    .line 764
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 765
    return-void
.end method

.method private showScanningState()V
    .locals 2

    .prologue
    .line 437
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 438
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 439
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->showScanningProgressBar()V

    .line 440
    return-void
.end method

.method private showTopDividerWithProgressBar()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 431
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 432
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mTopDividerNoProgress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 433
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mBottomPadding:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 434
    return-void
.end method


# virtual methods
.method changeNextButtonState(Z)V
    .locals 2
    .parameter "connected"

    .prologue
    .line 659
    if-eqz p1, :cond_0

    .line 660
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    const v1, 0x7f0b05ed

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 664
    :goto_0
    return-void

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    const v1, 0x7f0b05ec

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method initSecurityFields(Landroid/view/View;I)Z
    .locals 6
    .parameter "view"
    .parameter "accessPointSecurity"

    .prologue
    const v5, 0x7f08021d

    const v4, 0x7f08021c

    const/4 v1, 0x1

    const/16 v3, 0x8

    const/4 v0, 0x0

    .line 515
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 516
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 517
    const v2, 0x7f08021f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 518
    const v2, 0x7f080220

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 520
    const/4 v2, 0x3

    if-ne p2, v2, :cond_1

    .line 521
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 522
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->hideSoftwareKeyboard()V

    .line 527
    const v1, 0x7f08021e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 528
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 533
    :goto_0
    const v1, 0x7f080205

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 534
    const v1, 0x7f08021f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 535
    const v1, 0x7f080220

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 536
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->onEapNetworkSelected()V

    .line 558
    :goto_1
    return v0

    .line 531
    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 542
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 543
    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 548
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;

    if-eqz v0, :cond_3

    .line 549
    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    if-ne p2, v1, :cond_4

    .line 551
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;

    const v2, 0x7f0801f8

    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;->requestFocusAndShowKeyboard(I)V

    :cond_3
    :goto_2
    move v0, v1

    .line 558
    goto :goto_1

    .line 553
    :cond_4
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;

    const v2, 0x7f0801fc

    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;->requestFocusAndShowKeyboard(I)V

    goto :goto_2
.end method

.method onAccessPointsUpdated(Landroid/preference/PreferenceScreen;Ljava/util/Collection;)V
    .locals 5
    .parameter "preferenceScreen"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceScreen;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/OriginalSettings/wifi/AccessPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, accessPoints:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/OriginalSettings/wifi/AccessPoint;>;"
    const/4 v4, 0x1

    .line 675
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 676
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedProgressBar()V

    .line 677
    iget v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    if-nez v2, :cond_0

    .line 678
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 679
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mBottomPadding:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 681
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 682
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 685
    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 686
    .local v0, accessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    const v2, 0x7f040031

    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setLayoutResource(I)V

    .line 687
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 689
    .end local v0           #accessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    .line 246
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->hideSoftwareKeyboard()V

    .line 247
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 248
    const-string v0, "SetupWizard"

    const-string v1, "AddNetwork button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->onAddNetworkButtonPressed()V

    .line 272
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 250
    .restart local p1
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 251
    const-string v0, "SetupWizard"

    const-string v1, "Refresh button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->refreshAccessPoints(Z)V

    goto :goto_0

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 254
    const-string v0, "SetupWizard"

    const-string v1, "Skip/Next button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const v0, 0x7f0b05ec

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast p1, Landroid/widget/Button;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 258
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 260
    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->setResult(I)V

    .line 264
    :goto_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->finish()V

    goto :goto_0

    .line 262
    :cond_3
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->setResult(I)V

    goto :goto_1

    .line 265
    .restart local p1
    :cond_4
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_5

    .line 266
    const-string v0, "SetupWizard"

    const-string v1, "Connect button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->onConnectButtonPressed()V

    goto :goto_0

    .line 268
    :cond_5
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 269
    const-string v0, "SetupWizard"

    const-string v1, "Back button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->onBackButtonPressed()V

    goto :goto_0
.end method

.method onConnectButtonPressed()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 575
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 577
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/OriginalSettings/wifi/WifiSettings;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/OriginalSettings/wifi/WifiConfigController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/OriginalSettings/wifi/WifiSettings;->submit(Lcom/android/OriginalSettings/wifi/WifiConfigController;)V

    .line 585
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->showConnectingState()V

    .line 588
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 589
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    const v2, 0x7f0b05ee

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 591
    const v1, 0x7f080252

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 592
    .local v0, parent:Landroid/view/ViewGroup;
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 593
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 594
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusView:Landroid/widget/TextView;

    const v2, 0x7f0b05fe

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 596
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 597
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 598
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 599
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 600
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 601
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 142
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 151
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->requestWindowFeature(I)Z

    .line 152
    const v0, 0x7f0400ae

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->setContentView(I)V

    .line 154
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 157
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 158
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v1, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL$WifiServiceHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL$WifiServiceHandler;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL$1;)V

    invoke-virtual {v0, p0, v1}, Landroid/net/wifi/WifiManager;->asyncConnect(Landroid/content/Context;Landroid/os/Handler;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f080251

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/wifi/WifiSettings;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/OriginalSettings/wifi/WifiSettings;

    .line 162
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 164
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->initViews()V

    .line 168
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->showScanningState()V

    .line 170
    return-void
.end method

.method onSaveNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 787
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->connectNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 788
    return-void
.end method

.method onSupplicantStateChanged(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 706
    const-string v1, "supplicantError"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 707
    .local v0, errorCode:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 708
    const-string v1, "SetupWizard"

    const-string v2, "Received authentication error event."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->onAuthenticationFailure()V

    .line 711
    :cond_0
    return-void
.end method

.method setPaddingVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mTopPadding:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 741
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mContentPadding:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 742
    return-void
.end method

.method showConfigUi(Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V
    .locals 5
    .parameter "selectedAccessPoint"
    .parameter "edit"

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 454
    iput v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 456
    if-eqz p1, :cond_1

    iget v1, p1, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    if-eq v1, v2, :cond_0

    iget v1, p1, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 462
    :cond_0
    const/4 p2, 0x1

    .line 466
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/OriginalSettings/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->pauseWifiScan()V

    .line 468
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 469
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusLayout:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 470
    const v1, 0x7f080252

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 471
    .local v0, parent:Landroid/view/ViewGroup;
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 472
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 473
    new-instance v1, Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;Landroid/view/ViewGroup;Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;

    .line 475
    if-nez p1, :cond_2

    .line 476
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->showAddNetworkTitle()V

    .line 477
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 479
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedProgressBar()V

    .line 480
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->showEditingButtonState()V

    .line 503
    :goto_0
    return-void

    .line 481
    :cond_2
    iget v1, p1, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    if-nez v1, :cond_3

    .line 482
    invoke-virtual {p1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    .line 485
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->performClick()Z

    goto :goto_0

    .line 487
    :cond_3
    invoke-virtual {p1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    .line 488
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->showEditingTitle()V

    .line 489
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedProgressBar()V

    .line 490
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->showEditingButtonState()V

    .line 491
    iget v1, p1, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 492
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->onEapNetworkSelected()V

    goto :goto_0

    .line 494
    :cond_4
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 499
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    const v2, 0x7f0b0291

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 500
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    const v2, 0x7f0b05f3

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 3
    .parameter "originalState"

    .prologue
    .line 284
    sget-object v1, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    invoke-virtual {v1, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo$DetailedState;

    .line 286
    .local v0, state:Landroid/net/NetworkInfo$DetailedState;
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_0

    .line 289
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->refreshAccessPoints(Z)V

    .line 292
    :cond_0
    sget-object v1, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL$1;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    invoke-virtual {v0}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 318
    iget v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/OriginalSettings/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getAccessPointsCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 320
    invoke-static {p0, v0}, Lcom/android/OriginalSettings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedState(Ljava/lang/String;)V

    .line 324
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mPreviousNetworkState:Landroid/net/NetworkInfo$DetailedState;

    .line 325
    return-void

    .line 294
    :pswitch_0
    iget v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    if-nez v1, :cond_3

    .line 295
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/OriginalSettings/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getAccessPointsCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 296
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->showScanningState()V

    goto :goto_0

    .line 298
    :cond_2
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedProgressBar()V

    .line 299
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 300
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mBottomPadding:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 303
    :cond_3
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedProgressBar()V

    goto :goto_0

    .line 308
    :pswitch_1
    iget v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 309
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->showConnectingState()V

    goto :goto_0

    .line 314
    :pswitch_2
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->showConnectedState()V

    goto :goto_0

    .line 292
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
