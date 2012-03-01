.class Lcom/android/phone/InVTCallScreen$14;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 6391
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$14;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    .line 6393
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$14;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->showRadioOnDialog()V
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$6700(Lcom/android/phone/InVTCallScreen;)V

    .line 6394
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 6397
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$14;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 6400
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6401
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6402
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$14;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InVTCallScreen;->sendBroadcast(Landroid/content/Intent;)V

    .line 6403
    return-void
.end method
