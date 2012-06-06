.class Lcom/android/OriginalSettings/SecuritySettings$4;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/SecuritySettings;->updateSIMLockEnable(Z)V
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
    .line 633
    iput-object p1, p0, Lcom/android/OriginalSettings/SecuritySettings$4;->this$0:Lcom/android/OriginalSettings/SecuritySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 635
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 642
    iget-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings$4;->this$0:Lcom/android/OriginalSettings/SecuritySettings;

    #getter for: Lcom/android/OriginalSettings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceCategory;
    invoke-static {v0}, Lcom/android/OriginalSettings/SecuritySettings;->access$200(Lcom/android/OriginalSettings/SecuritySettings;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 644
    :pswitch_0
    return-void

    .line 635
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
