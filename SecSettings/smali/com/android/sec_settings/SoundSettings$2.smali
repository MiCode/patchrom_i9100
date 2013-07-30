.class Lcom/android/sec_settings/SoundSettings$2;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/SoundSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/SoundSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/sec_settings/SoundSettings$2;->this$0:Lcom/android/sec_settings/SoundSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 398
    iget-object v0, p0, Lcom/android/sec_settings/SoundSettings$2;->this$0:Lcom/android/sec_settings/SoundSettings;

    #getter for: Lcom/android/sec_settings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/sec_settings/SoundSettings;->access$000(Lcom/android/sec_settings/SoundSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/android/sec_settings/SoundSettings$2;->this$0:Lcom/android/sec_settings/SoundSettings;

    iget-object v1, p0, Lcom/android/sec_settings/SoundSettings$2;->this$0:Lcom/android/sec_settings/SoundSettings;

    #getter for: Lcom/android/sec_settings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/sec_settings/SoundSettings;->access$000(Lcom/android/sec_settings/SoundSettings;)Landroid/preference/Preference;

    move-result-object v1

    #calls: Lcom/android/sec_settings/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v2, v1, v2}, Lcom/android/sec_settings/SoundSettings;->access$500(Lcom/android/sec_settings/SoundSettings;ILandroid/preference/Preference;I)V

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/android/sec_settings/SoundSettings$2;->this$0:Lcom/android/sec_settings/SoundSettings;

    #getter for: Lcom/android/sec_settings/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/sec_settings/SoundSettings;->access$100(Lcom/android/sec_settings/SoundSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/android/sec_settings/SoundSettings$2;->this$0:Lcom/android/sec_settings/SoundSettings;

    iget-object v1, p0, Lcom/android/sec_settings/SoundSettings$2;->this$0:Lcom/android/sec_settings/SoundSettings;

    #getter for: Lcom/android/sec_settings/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/sec_settings/SoundSettings;->access$100(Lcom/android/sec_settings/SoundSettings;)Landroid/preference/Preference;

    move-result-object v1

    #calls: Lcom/android/sec_settings/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v3, v1, v3}, Lcom/android/sec_settings/SoundSettings;->access$500(Lcom/android/sec_settings/SoundSettings;ILandroid/preference/Preference;I)V

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/android/sec_settings/SoundSettings$2;->this$0:Lcom/android/sec_settings/SoundSettings;

    #getter for: Lcom/android/sec_settings/SoundSettings;->mRingtone2Preference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/sec_settings/SoundSettings;->access$400(Lcom/android/sec_settings/SoundSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 407
    iget-object v0, p0, Lcom/android/sec_settings/SoundSettings$2;->this$0:Lcom/android/sec_settings/SoundSettings;

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/android/sec_settings/SoundSettings$2;->this$0:Lcom/android/sec_settings/SoundSettings;

    #getter for: Lcom/android/sec_settings/SoundSettings;->mRingtone2Preference:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/sec_settings/SoundSettings;->access$400(Lcom/android/sec_settings/SoundSettings;)Landroid/preference/Preference;

    move-result-object v2

    const/4 v3, 0x5

    #calls: Lcom/android/sec_settings/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/sec_settings/SoundSettings;->access$500(Lcom/android/sec_settings/SoundSettings;ILandroid/preference/Preference;I)V

    .line 410
    :cond_2
    return-void
.end method
