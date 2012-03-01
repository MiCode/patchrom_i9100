.class Lcom/android/phone/InVTCallScreen$28;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 8418
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/16 v6, 0xf

    const/16 v2, 0xa

    const/high16 v5, 0x4120

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8420
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8421
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 8570
    :cond_0
    :goto_0
    return v3

    .line 8424
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7300(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8425
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7402(I)I

    .line 8426
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7502(I)I

    goto :goto_0

    .line 8430
    :pswitch_1
    const-string v0, "InVTCallScreen"

    const-string v1, "Action Move got fired so no context Menu created "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8433
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$7608()I

    .line 8435
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7300(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8436
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$7600()I

    move-result v0

    if-le v0, v6, :cond_0

    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$7400()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v2, :cond_0

    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$7500()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v2, :cond_0

    .line 8437
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$7702(Z)Z

    goto :goto_0

    .line 8441
    :cond_1
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$7600()I

    move-result v0

    if-le v0, v6, :cond_0

    .line 8442
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$7702(Z)Z

    goto :goto_0

    .line 8447
    :pswitch_2
    invoke-static {v4}, Lcom/android/phone/InVTCallScreen;->access$7702(Z)Z

    .line 8448
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$7602(I)I

    .line 8514
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mFirstFarEndViewClicked:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7100(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8515
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    const/16 v1, 0x28

    #setter for: Lcom/android/phone/InVTCallScreen;->svTopYPos:I
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$7802(Lcom/android/phone/InVTCallScreen;I)I

    .line 8516
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, v1, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->svTopYPos:I
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$7800(Lcom/android/phone/InVTCallScreen;)I

    move-result v2

    add-int/2addr v1, v2

    #setter for: Lcom/android/phone/InVTCallScreen;->svBottomYPos:I
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$7902(Lcom/android/phone/InVTCallScreen;I)I

    .line 8518
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->svBottomYPos:I
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$7900(Lcom/android/phone/InVTCallScreen;)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    #setter for: Lcom/android/phone/InVTCallScreen;->nvTopYPos:I
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$8002(Lcom/android/phone/InVTCallScreen;I)I

    .line 8519
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, v1, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->nvTopYPos:I
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$8000(Lcom/android/phone/InVTCallScreen;)I

    move-result v2

    add-int/2addr v1, v2

    #setter for: Lcom/android/phone/InVTCallScreen;->nvBottomYPos:I
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$8102(Lcom/android/phone/InVTCallScreen;I)I

    .line 8522
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, v1, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->nvTopYPos:I
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$8000(Lcom/android/phone/InVTCallScreen;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->nvBottomYPos:I
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$8100(Lcom/android/phone/InVTCallScreen;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 8529
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5400(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8530
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$5402(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 8537
    :goto_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->swipeSurfaceView()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$8200(Lcom/android/phone/InVTCallScreen;)V

    .line 8565
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mFirstFarEndViewClicked:Z
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$7102(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 8566
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mFirstNearEndViewClicked:Z
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$7202(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_0

    .line 8532
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z
    invoke-static {v0, v4}, Lcom/android/phone/InVTCallScreen;->access$5402(Lcom/android/phone/InVTCallScreen;Z)Z

    goto :goto_1

    .line 8542
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mFirstNearEndViewClicked:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8543
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    const/16 v1, 0x28

    #setter for: Lcom/android/phone/InVTCallScreen;->svTopYPos:I
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$7802(Lcom/android/phone/InVTCallScreen;I)I

    .line 8544
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, v1, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->svTopYPos:I
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$7800(Lcom/android/phone/InVTCallScreen;)I

    move-result v2

    add-int/2addr v1, v2

    #setter for: Lcom/android/phone/InVTCallScreen;->svBottomYPos:I
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$7902(Lcom/android/phone/InVTCallScreen;I)I

    .line 8546
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, v1, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->svTopYPos:I
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$7800(Lcom/android/phone/InVTCallScreen;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->svBottomYPos:I
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$7900(Lcom/android/phone/InVTCallScreen;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 8553
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5400(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8554
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$5402(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 8561
    :goto_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->swipeSurfaceView()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$8200(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_2

    .line 8556
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z
    invoke-static {v0, v4}, Lcom/android/phone/InVTCallScreen;->access$5402(Lcom/android/phone/InVTCallScreen;Z)Z

    goto :goto_3

    .line 8421
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
