.class Lcom/android/settings/nearby/NearbySettings$1;
.super Ljava/lang/Object;
.source "NearbySettings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nearby/NearbySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nearby/NearbySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/nearby/NearbySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .parameter "name"
    .parameter "service"

    .prologue
    const/4 v5, 0x1

    .line 247
    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    invoke-static {p2}, Lcom/android/settings/nearby/IMediaServer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/settings/nearby/IMediaServer;

    move-result-object v3

    #setter for: Lcom/android/settings/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;
    invoke-static {v2, v3}, Lcom/android/settings/nearby/NearbySettings;->access$002(Lcom/android/settings/nearby/NearbySettings;Lcom/android/settings/nearby/IMediaServer;)Lcom/android/settings/nearby/IMediaServer;

    .line 248
    const-string v2, "AllshareSetting"

    const-string v3, "AllshareSetting: onServiceConnected"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;
    invoke-static {v2}, Lcom/android/settings/nearby/NearbySettings;->access$000(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/IMediaServer;

    move-result-object v2

    if-nez v2, :cond_1

    .line 251
    const-string v2, "AllshareSetting"

    const-string v3, "AllshareSetting: mIMediaServer == null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    invoke-virtual {v2}, Lcom/android/settings/nearby/NearbySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 258
    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    invoke-virtual {v2}, Lcom/android/settings/nearby/NearbySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 260
    .local v0, currentPreference:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    iget-object v3, p0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    invoke-virtual {v3}, Lcom/android/settings/nearby/NearbySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    #calls: Lcom/android/settings/nearby/NearbySettings;->registerPreferenceChangeListener(Landroid/preference/PreferenceGroup;Ljava/util/Map;)V
    invoke-static {v2, v3, v0}, Lcom/android/settings/nearby/NearbySettings;->access$100(Lcom/android/settings/nearby/NearbySettings;Landroid/preference/PreferenceGroup;Ljava/util/Map;)V

    .line 261
    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    #calls: Lcom/android/settings/nearby/NearbySettings;->refreshPreferenceValues()V
    invoke-static {v2}, Lcom/android/settings/nearby/NearbySettings;->access$200(Lcom/android/settings/nearby/NearbySettings;)V

    .line 263
    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/nearby/NearbySettings;->access$300(Lcom/android/settings/nearby/NearbySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 264
    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/nearby/NearbySettings;->access$300(Lcom/android/settings/nearby/NearbySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 266
    :cond_2
    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/nearby/NearbySettings;->access$400(Lcom/android/settings/nearby/NearbySettings;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "AutoDMS"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 268
    .local v1, systemAutoDMS:Z
    const-string v2, "AllshareSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AllshareSetting: onServiceConnected, Auto start : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    if-eqz v1, :cond_0

    .line 270
    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/nearby/NearbySettings;->access$300(Lcom/android/settings/nearby/NearbySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 271
    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    iget-object v3, p0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings/nearby/NearbySettings;->access$300(Lcom/android/settings/nearby/NearbySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/nearby/NearbySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    invoke-virtual {v0}, Lcom/android/settings/nearby/NearbySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 242
    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;
    invoke-static {v0, v1}, Lcom/android/settings/nearby/NearbySettings;->access$002(Lcom/android/settings/nearby/NearbySettings;Lcom/android/settings/nearby/IMediaServer;)Lcom/android/settings/nearby/IMediaServer;

    .line 243
    return-void
.end method
