.class Lcom/android/internal/telephony/IccCard$1;
.super Ljava/lang/Object;
.source "IccCard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/IccCard;->onIccSwap(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IccCard;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccCard;)V
    .locals 0
    .parameter

    .prologue
    .line 1049
    iput-object p1, p0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1052
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 1053
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v1, v1, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v2, "Reboot due to SIM swap"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 1054
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v1, v1, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1056
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "SIM is added."

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 1058
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_1
    return-void
.end method
