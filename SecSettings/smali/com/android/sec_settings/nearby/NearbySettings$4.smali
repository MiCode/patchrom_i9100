.class Lcom/android/sec_settings/nearby/NearbySettings$4;
.super Ljava/lang/Object;
.source "NearbySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/nearby/NearbySettings;->requestWifiSettingPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/nearby/NearbySettings;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/nearby/NearbySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 732
    iput-object p1, p0, Lcom/android/sec_settings/nearby/NearbySettings$4;->this$0:Lcom/android/sec_settings/nearby/NearbySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 734
    const-string v0, "AllshareSetting"

    const-string v1, "AllshareSetting: Wifi AlertDialog Select : Positive"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-object v0, p0, Lcom/android/sec_settings/nearby/NearbySettings$4;->this$0:Lcom/android/sec_settings/nearby/NearbySettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/sec_settings/nearby/NearbySettings;->bWifiPopupShown:Z
    invoke-static {v0, v1}, Lcom/android/sec_settings/nearby/NearbySettings;->access$902(Lcom/android/sec_settings/nearby/NearbySettings;Z)Z

    .line 736
    iget-object v0, p0, Lcom/android/sec_settings/nearby/NearbySettings$4;->this$0:Lcom/android/sec_settings/nearby/NearbySettings;

    #getter for: Lcom/android/sec_settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/sec_settings/nearby/NearbySettings;->access$300(Lcom/android/sec_settings/nearby/NearbySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/android/sec_settings/nearby/NearbySettings$4;->this$0:Lcom/android/sec_settings/nearby/NearbySettings;

    #getter for: Lcom/android/sec_settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/sec_settings/nearby/NearbySettings;->access$300(Lcom/android/sec_settings/nearby/NearbySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 738
    :cond_0
    return-void
.end method
