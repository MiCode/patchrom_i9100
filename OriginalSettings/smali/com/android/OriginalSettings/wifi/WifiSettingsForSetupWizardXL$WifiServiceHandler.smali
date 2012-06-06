.class Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL$WifiServiceHandler;
.super Landroid/os/Handler;
.source "WifiSettingsForSetupWizardXL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;


# direct methods
.method private constructor <init>(Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL$WifiServiceHandler;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL$WifiServiceHandler;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 218
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 220
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    .line 224
    const-string v0, "SetupWizard"

    const-string v1, "Failed to establish AsyncChannel connection"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 218
    :pswitch_data_0
    .packed-switch 0x11000
        :pswitch_0
    .end packed-switch
.end method
