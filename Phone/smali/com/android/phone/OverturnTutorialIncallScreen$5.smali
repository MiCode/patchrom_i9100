.class Lcom/android/phone/OverturnTutorialIncallScreen$5;
.super Ljava/lang/Object;
.source "OverturnTutorialIncallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/OverturnTutorialIncallScreen;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/OverturnTutorialIncallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/OverturnTutorialIncallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/phone/OverturnTutorialIncallScreen$5;->this$0:Lcom/android/phone/OverturnTutorialIncallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen$5;->this$0:Lcom/android/phone/OverturnTutorialIncallScreen;

    #getter for: Lcom/android/phone/OverturnTutorialIncallScreen;->mPreviousMsg:I
    invoke-static {v0}, Lcom/android/phone/OverturnTutorialIncallScreen;->access$000(Lcom/android/phone/OverturnTutorialIncallScreen;)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 331
    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen$5;->this$0:Lcom/android/phone/OverturnTutorialIncallScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/OverturnTutorialIncallScreen;->mPreviousMsg:I
    invoke-static {v0, v1}, Lcom/android/phone/OverturnTutorialIncallScreen;->access$002(Lcom/android/phone/OverturnTutorialIncallScreen;I)I

    .line 333
    :cond_0
    return-void
.end method
