.class public Lcom/android/phone/RespondViaSmsManager$RespondViaSmsCancelListener;
.super Ljava/lang/Object;
.source "RespondViaSmsManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RespondViaSmsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RespondViaSmsCancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RespondViaSmsManager;


# direct methods
.method public constructor <init>(Lcom/android/phone/RespondViaSmsManager;)V
    .locals 0
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsCancelListener;->this$0:Lcom/android/phone/RespondViaSmsManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 257
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 264
    invoke-static {}, Lcom/android/phone/RespondViaSmsManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RespondViaSmsCancelListener.onCancel()..."

    #calls: Lcom/android/phone/RespondViaSmsManager;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/RespondViaSmsManager;->access$100(Ljava/lang/String;)V

    .line 274
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->restartRinger()V

    .line 284
    iget-object v0, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsCancelListener;->this$0:Lcom/android/phone/RespondViaSmsManager;

    #getter for: Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v0}, Lcom/android/phone/RespondViaSmsManager;->access$400(Lcom/android/phone/RespondViaSmsManager;)Lcom/android/phone/InCallScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    .line 285
    return-void
.end method
