.class Lcom/android/OriginalSettings/SecuritySettings$1;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/SecuritySettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/SecuritySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/OriginalSettings/SecuritySettings$1;->this$0:Lcom/android/OriginalSettings/SecuritySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preference"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 267
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 268
    .local v0, mIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/OriginalSettings/SecuritySettings$1;->this$0:Lcom/android/OriginalSettings/SecuritySettings;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "samsung_signin"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 269
    const-string v2, "com.osp.app.signin"

    const-string v3, "com.osp.app.signin.UserValidateCheck"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    :goto_0
    const-string v2, "MODE"

    const-string v3, "CHANGE_SIM_ALERT"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    iget-object v2, p0, Lcom/android/OriginalSettings/SecuritySettings$1;->this$0:Lcom/android/OriginalSettings/SecuritySettings;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v0, v3}, Lcom/android/OriginalSettings/SecuritySettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 279
    return v4

    .line 272
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/SecuritySettings$1;->this$0:Lcom/android/OriginalSettings/SecuritySettings;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "GoogleAccountPreferences"

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 273
    .local v1, mSharedPreferences:Landroid/content/SharedPreferences;
    const-string v2, "pref_google_account"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 274
    iget-object v2, p0, Lcom/android/OriginalSettings/SecuritySettings$1;->this$0:Lcom/android/OriginalSettings/SecuritySettings;

    #setter for: Lcom/android/OriginalSettings/SecuritySettings;->mFirstSignin:Z
    invoke-static {v2, v5}, Lcom/android/OriginalSettings/SecuritySettings;->access$002(Lcom/android/OriginalSettings/SecuritySettings;Z)Z

    .line 275
    :cond_1
    const-string v2, "com.osp.app.signin"

    const-string v3, "com.osp.app.signin.AccountView"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
