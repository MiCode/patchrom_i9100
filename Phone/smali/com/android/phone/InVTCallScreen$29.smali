.class Lcom/android/phone/InVTCallScreen$29;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InVTCallScreen;->surfaceview_initialize()V
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
    .line 8575
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const/16 v2, 0x9

    const/4 v1, 0x7

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 8579
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$7700()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8580
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mFirstFarEndViewClicked:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7100(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8581
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5400(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8582
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTcalltype:I
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2100(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 8583
    const-string v0, "InVTCallScreen"

    const-string v1, "This is inside onLongClick of OnLongClickListener for Own Image and isSurfaceViewSwipe is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8587
    const-string v0, "InVTCallScreen"

    const-string v1, "This is inside onLongClick of OnLongClickListener for Own Image"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8590
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mBlur_Off:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$8300(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8591
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mDownUppos:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$8500(Lcom/android/phone/InVTCallScreen;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    #setter for: Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/phone/InVTCallScreen;->access$8402(Lcom/android/phone/InVTCallScreen;[Ljava/lang/String;)[Ljava/lang/String;

    .line 8595
    :goto_0
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$8702(Z)Z

    .line 8596
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$4500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8597
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v2}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    .line 8669
    :cond_0
    :goto_1
    return v4

    .line 8593
    :cond_1
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mDownUpposBlurOff:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$8600(Lcom/android/phone/InVTCallScreen;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    #setter for: Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/phone/InVTCallScreen;->access$8402(Lcom/android/phone/InVTCallScreen;[Ljava/lang/String;)[Ljava/lang/String;

    goto :goto_0

    .line 8601
    :cond_2
    const-string v0, "InVTCallScreen"

    const-string v1, "In onLongClick of far_endsurview "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8610
    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In mDisp_Small is false.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mDisp_Small:Z
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$8800(Lcom/android/phone/InVTCallScreen;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8612
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallerUppos:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$8900(Lcom/android/phone/InVTCallScreen;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    #setter for: Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/phone/InVTCallScreen;->access$8402(Lcom/android/phone/InVTCallScreen;[Ljava/lang/String;)[Ljava/lang/String;

    .line 8613
    invoke-static {v4}, Lcom/android/phone/InVTCallScreen;->access$8702(Z)Z

    .line 8616
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8617
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v3}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto :goto_1

    .line 8624
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mFirstNearEndViewClicked:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8625
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5400(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8626
    const-string v0, "InVTCallScreen"

    const-string v1, "In onLongClick of far_endsurview "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8635
    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In mDisp_Small is false.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mDisp_Small:Z
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$8800(Lcom/android/phone/InVTCallScreen;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8637
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallerUppos:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$8900(Lcom/android/phone/InVTCallScreen;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    #setter for: Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/phone/InVTCallScreen;->access$8402(Lcom/android/phone/InVTCallScreen;[Ljava/lang/String;)[Ljava/lang/String;

    .line 8638
    invoke-static {v4}, Lcom/android/phone/InVTCallScreen;->access$8702(Z)Z

    .line 8641
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8642
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v3}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_1

    .line 8645
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTcalltype:I
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2100(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 8646
    const-string v0, "InVTCallScreen"

    const-string v1, "This is inside onLongClick of OnLongClickListener for near end surface view  for Own Image isSurfaceViewSwipe is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8649
    const-string v0, "InVTCallScreen"

    const-string v1, "This is inside onLongClick of OnLongClickListener for Own Image"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8659
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mDownUppos:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$8500(Lcom/android/phone/InVTCallScreen;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    #setter for: Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/phone/InVTCallScreen;->access$8402(Lcom/android/phone/InVTCallScreen;[Ljava/lang/String;)[Ljava/lang/String;

    .line 8661
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$8702(Z)Z

    .line 8662
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$4500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8663
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v2}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_1
.end method
