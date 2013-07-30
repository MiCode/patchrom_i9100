.class public Lcom/android/sec_settings/CryptKeeperSettings;
.super Landroid/app/Fragment;
.source "CryptKeeperSettings.java"


# instance fields
.field private mBatteryWarning:Landroid/view/View;

.field private mContentView:Landroid/view/View;

.field private mDem:Landroid/dirEncryption/DirEncryptionManager;

.field private mInitiateButton:Landroid/widget/Button;

.field private mInitiateListener:Landroid/view/View$OnClickListener;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mParent:Landroid/app/Activity;

.field private mPasswordWarning:Landroid/widget/TextView;

.field private mPowerWarning:Landroid/view/View;

.field private mSDcardOngoingWarning:Landroid/view/View;

.field private mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sec_settings/CryptKeeperSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    .line 65
    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    iput-object v0, p0, Lcom/android/sec_settings/CryptKeeperSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    .line 71
    new-instance v0, Lcom/android/sec_settings/CryptKeeperSettings$1;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/CryptKeeperSettings$1;-><init>(Lcom/android/sec_settings/CryptKeeperSettings;)V

    iput-object v0, p0, Lcom/android/sec_settings/CryptKeeperSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 117
    new-instance v0, Lcom/android/sec_settings/CryptKeeperSettings$2;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/CryptKeeperSettings$2;-><init>(Lcom/android/sec_settings/CryptKeeperSettings;)V

    iput-object v0, p0, Lcom/android/sec_settings/CryptKeeperSettings;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/sec_settings/CryptKeeperSettings;)Landroid/dirEncryption/DirEncryptionManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/sec_settings/CryptKeeperSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/sec_settings/CryptKeeperSettings;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/sec_settings/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/sec_settings/CryptKeeperSettings;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/sec_settings/CryptKeeperSettings;->mPowerWarning:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/sec_settings/CryptKeeperSettings;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/sec_settings/CryptKeeperSettings;->mBatteryWarning:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/sec_settings/CryptKeeperSettings;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/sec_settings/CryptKeeperSettings;->mSDcardOngoingWarning:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/sec_settings/CryptKeeperSettings;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/sec_settings/CryptKeeperSettings;->mPasswordWarning:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/sec_settings/CryptKeeperSettings;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/sec_settings/CryptKeeperSettings;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 5
    .parameter "request"

    .prologue
    .line 225
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/sec_settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v0

    .line 226
    .local v0, quality:I
    const/high16 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 227
    const/4 v2, 0x0

    .line 231
    :goto_0
    return v2

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/android/sec_settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 231
    .local v1, res:Landroid/content/res/Resources;
    new-instance v2, Lcom/android/sec_settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/sec_settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/android/sec_settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v3, 0x7f090522

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f090523

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/sec_settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_0
.end method

.method private showFinalConfirmation(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 256
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/sec_settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 257
    const-class v0, Lcom/android/sec_settings/CryptKeeperConfirm;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 258
    const v0, 0x7f09016c

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 259
    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "password"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Lcom/android/sec_settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/preference/PreferenceActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    .line 261
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 197
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 215
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 239
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 241
    const/16 v1, 0x37

    if-eq p1, v1, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    .line 248
    const-string v1, "password"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, password:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    invoke-direct {p0, v0}, Lcom/android/sec_settings/CryptKeeperSettings;->showFinalConfirmation(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "parent"

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 136
    iput-object p1, p0, Lcom/android/sec_settings/CryptKeeperSettings;->mParent:Landroid/app/Activity;

    .line 137
    const-string v0, "CryptKeeper"

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    const/4 v4, 0x0

    .line 142
    const v0, 0x7f040036

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/CryptKeeperSettings;->mContentView:Landroid/view/View;

    .line 144
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/sec_settings/CryptKeeperSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 145
    iget-object v0, p0, Lcom/android/sec_settings/CryptKeeperSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/android/sec_settings/CryptKeeperSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0b0073

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/sec_settings/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    .line 148
    iget-object v0, p0, Lcom/android/sec_settings/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/sec_settings/CryptKeeperSettings;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, p0, Lcom/android/sec_settings/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 151
    iget-object v0, p0, Lcom/android/sec_settings/CryptKeeperSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0b0071

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/CryptKeeperSettings;->mPowerWarning:Landroid/view/View;

    .line 152
    iget-object v0, p0, Lcom/android/sec_settings/CryptKeeperSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0b0070

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/CryptKeeperSettings;->mBatteryWarning:Landroid/view/View;

    .line 155
    iget-object v0, p0, Lcom/android/sec_settings/CryptKeeperSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0b0072

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/sec_settings/CryptKeeperSettings;->mPasswordWarning:Landroid/widget/TextView;

    .line 156
    iget-object v0, p0, Lcom/android/sec_settings/CryptKeeperSettings;->mPasswordWarning:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/sec_settings/CryptKeeperSettings;->mPasswordWarning:Landroid/widget/TextView;

    const v1, 0x7f090961

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/sec_settings/CryptKeeperSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 164
    :cond_0
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v1, p0, Lcom/android/sec_settings/CryptKeeperSettings;->mParent:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/sec_settings/CryptKeeperSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    .line 165
    iget-object v0, p0, Lcom/android/sec_settings/CryptKeeperSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/CryptKeeperSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    .line 166
    iget-object v0, p0, Lcom/android/sec_settings/CryptKeeperSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    if-nez v0, :cond_1

    .line 167
    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    iput-object v0, p0, Lcom/android/sec_settings/CryptKeeperSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    .line 170
    :cond_1
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/sec_settings/CryptKeeperSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v1, v1, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v0, v1, :cond_2

    .line 171
    iget-object v0, p0, Lcom/android/sec_settings/CryptKeeperSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0b0061

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/CryptKeeperSettings;->mSDcardOngoingWarning:Landroid/view/View;

    .line 176
    :goto_0
    iget-object v0, p0, Lcom/android/sec_settings/CryptKeeperSettings;->mContentView:Landroid/view/View;

    return-object v0

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/android/sec_settings/CryptKeeperSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0b0062

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/CryptKeeperSettings;->mSDcardOngoingWarning:Landroid/view/View;

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 187
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 188
    invoke-virtual {p0}, Lcom/android/sec_settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/CryptKeeperSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 189
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 181
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 182
    invoke-virtual {p0}, Lcom/android/sec_settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/CryptKeeperSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/sec_settings/CryptKeeperSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 183
    return-void
.end method
