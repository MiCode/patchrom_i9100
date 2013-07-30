.class public Lcom/android/sec_settings/accounts/AddAccountSettings;
.super Landroid/app/Activity;
.source "AddAccountSettings.java"


# instance fields
.field private mAddAccountCalled:Z

.field private mCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mChooseAccountFinished:Z

.field private mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 79
    new-instance v0, Lcom/android/sec_settings/accounts/AddAccountSettings$1;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/accounts/AddAccountSettings$1;-><init>(Lcom/android/sec_settings/accounts/AddAccountSettings;)V

    iput-object v0, p0, Lcom/android/sec_settings/accounts/AddAccountSettings;->mCallback:Landroid/accounts/AccountManagerCallback;

    .line 103
    iput-boolean v1, p0, Lcom/android/sec_settings/accounts/AddAccountSettings;->mAddAccountCalled:Z

    .line 104
    iput-boolean v1, p0, Lcom/android/sec_settings/accounts/AddAccountSettings;->mChooseAccountFinished:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/sec_settings/accounts/AddAccountSettings;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/sec_settings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method private addAccount(Ljava/lang/String;)V
    .locals 13
    .parameter "accountType"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 173
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 174
    .local v4, addAccountOptions:Landroid/os/Bundle;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    .line 175
    const-string v0, "pendingIntent"

    iget-object v1, p0, Lcom/android/sec_settings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 178
    const-string v0, "com.facebook.auth.login"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.sec.android.app.sns3.facebook"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 179
    :cond_0
    invoke-direct {p0}, Lcom/android/sec_settings/accounts/AddAccountSettings;->checkInstalledfbApp()Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    :try_start_0
    new-instance v11, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 183
    .local v11, intent:Landroid/content/Intent;
    const-string v0, "market://details?id=com.facebook.katana"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 184
    .local v12, uri:Landroid/net/Uri;
    invoke-virtual {v11, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 185
    invoke-virtual {p0, v11}, Lcom/android/sec_settings/accounts/AddAccountSettings;->startActivity(Landroid/content/Intent;)V

    .line 186
    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/AddAccountSettings;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .end local v11           #intent:Landroid/content/Intent;
    .end local v12           #uri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v10

    .line 188
    .local v10, e:Ljava/lang/Exception;
    const-string v0, "AccountSettings"

    const-string v1, "Can not start market for facebook. "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 193
    .end local v10           #e:Ljava/lang/Exception;
    :cond_1
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.facebook.auth.login"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v8

    .line 194
    .local v8, accounts:[Landroid/accounts/Account;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.sec.android.app.sns3.facebook"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v9

    .line 195
    .local v9, accounts2:[Landroid/accounts/Account;
    array-length v0, v8

    if-lez v0, :cond_2

    array-length v0, v9

    if-nez v0, :cond_2

    .line 196
    const-string v0, "AccountSettings"

    const-string v1, "Facebook SSO was not succeed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 198
    .restart local v11       #intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.android.app.sns3"

    const-string v2, "com.sec.android.app.sns3.auth.sp.facebook.SnsAccountFbAuthSSOActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 200
    invoke-virtual {p0, v11}, Lcom/android/sec_settings/accounts/AddAccountSettings;->startActivity(Landroid/content/Intent;)V

    .line 201
    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/AddAccountSettings;->finish()V

    goto :goto_0

    .line 205
    .end local v11           #intent:Landroid/content/Intent;
    :cond_2
    const-string p1, "com.facebook.auth.login"

    .line 209
    .end local v8           #accounts:[Landroid/accounts/Account;
    .end local v9           #accounts2:[Landroid/accounts/Account;
    :cond_3
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v6, p0, Lcom/android/sec_settings/accounts/AddAccountSettings;->mCallback:Landroid/accounts/AccountManagerCallback;

    move-object v1, p1

    move-object v3, v2

    move-object v5, p0

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/sec_settings/accounts/AddAccountSettings;->mAddAccountCalled:Z

    goto :goto_0
.end method

.method private checkInstalledfbApp()Z
    .locals 4

    .prologue
    .line 223
    :try_start_0
    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/AddAccountSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.facebook.katana"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "AccountSettings"

    const-string v2, "FB app is not installed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 151
    packed-switch p1, :pswitch_data_0

    .line 163
    :goto_0
    return-void

    .line 153
    :pswitch_0
    if-nez p2, :cond_0

    .line 154
    invoke-virtual {p0, p2}, Lcom/android/sec_settings/accounts/AddAccountSettings;->setResult(I)V

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/sec_settings/accounts/AddAccountSettings;->mChooseAccountFinished:Z

    .line 156
    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/AddAccountSettings;->finish()V

    goto :goto_0

    .line 160
    :cond_0
    const-string v0, "selected_account"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/sec_settings/accounts/AddAccountSettings;->addAccount(Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    if-eqz p1, :cond_1

    .line 110
    const-string v0, "AddAccountCalled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/sec_settings/accounts/AddAccountSettings;->mAddAccountCalled:Z

    .line 111
    const-string v0, "ChooseAccountFinished"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/sec_settings/accounts/AddAccountSettings;->mChooseAccountFinished:Z

    .line 113
    iget-boolean v0, p0, Lcom/android/sec_settings/accounts/AddAccountSettings;->mChooseAccountFinished:Z

    if-nez v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 117
    :cond_0
    const-string v0, "AccountSettings"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AccountSettings"

    const-string v1, "restored"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_1
    iget-boolean v0, p0, Lcom/android/sec_settings/accounts/AddAccountSettings;->mAddAccountCalled:Z

    if-eqz v0, :cond_2

    .line 122
    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/AddAccountSettings;->finish()V

    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/AddAccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "authorities"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/AddAccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "account_types"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 129
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/sec_settings/accounts/ChooseAccountActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    if-eqz v0, :cond_3

    .line 131
    const-string v3, "authorities"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    :cond_3
    if-eqz v1, :cond_4

    .line 134
    const-string v0, "account_types"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/sec_settings/accounts/AddAccountSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 143
    invoke-static {p0}, Lcom/android/sec_settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/accounts/AddAccountSettings;->setResult(I)V

    .line 145
    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/AddAccountSettings;->finish()V

    .line 147
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 167
    const-string v0, "ChooseAccountFinished"

    iget-boolean v1, p0, Lcom/android/sec_settings/accounts/AddAccountSettings;->mChooseAccountFinished:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 168
    const-string v0, "AddAccountCalled"

    iget-boolean v1, p0, Lcom/android/sec_settings/accounts/AddAccountSettings;->mAddAccountCalled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 169
    const-string v0, "AccountSettings"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AccountSettings"

    const-string v1, "saved"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    return-void
.end method
