.class Lcom/android/sec_settings/LockScreenSettings$2;
.super Ljava/lang/Object;
.source "LockScreenSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/LockScreenSettings;->setCameraShortCut(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/LockScreenSettings;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/LockScreenSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 548
    iput-object p1, p0, Lcom/android/sec_settings/LockScreenSettings$2;->this$0:Lcom/android/sec_settings/LockScreenSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "dialog"

    .prologue
    const/4 v0, 0x0

    .line 550
    iget-object v1, p0, Lcom/android/sec_settings/LockScreenSettings$2;->this$0:Lcom/android/sec_settings/LockScreenSettings;

    #getter for: Lcom/android/sec_settings/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v1}, Lcom/android/sec_settings/LockScreenSettings;->access$100(Lcom/android/sec_settings/LockScreenSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/sec_settings/LockScreenSettings$2;->this$0:Lcom/android/sec_settings/LockScreenSettings;

    invoke-virtual {v2}, Lcom/android/sec_settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_unlock_camera_short_cut"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 551
    return-void
.end method
