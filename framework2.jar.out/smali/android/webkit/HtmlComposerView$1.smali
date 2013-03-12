.class Landroid/webkit/HtmlComposerView$1;
.super Ljava/lang/Object;
.source "HtmlComposerView.java"

# interfaces
.implements Landroid/widget/HoverPopupWindow$HoverPopupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HtmlComposerView;


# direct methods
.method constructor <init>(Landroid/webkit/HtmlComposerView;)V
    .locals 0
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Landroid/webkit/HtmlComposerView$1;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetContentView(Landroid/view/View;Landroid/widget/HoverPopupWindow;)Z
    .locals 7
    .parameter "parentView"
    .parameter "hpw"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 410
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v1, v2

    .line 434
    :goto_0
    return v1

    .line 412
    :cond_1
    iget-object v3, p0, Landroid/webkit/HtmlComposerView$1;->this$0:Landroid/webkit/HtmlComposerView;

    iget-boolean v3, v3, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSetContentView hpw = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_2
    iget-object v3, p0, Landroid/webkit/HtmlComposerView$1;->this$0:Landroid/webkit/HtmlComposerView;

    #getter for: Landroid/webkit/HtmlComposerView;->mResizingHoverImage:Landroid/widget/ImageView;
    invoke-static {v3}, Landroid/webkit/HtmlComposerView;->access$000(Landroid/webkit/HtmlComposerView;)Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/webkit/HtmlComposerView$1;->this$0:Landroid/webkit/HtmlComposerView;

    #getter for: Landroid/webkit/HtmlComposerView;->mRHIResource:I
    invoke-static {v3}, Landroid/webkit/HtmlComposerView;->access$100(Landroid/webkit/HtmlComposerView;)I

    move-result v3

    if-eq v6, v3, :cond_5

    iget-object v3, p0, Landroid/webkit/HtmlComposerView$1;->this$0:Landroid/webkit/HtmlComposerView;

    #getter for: Landroid/webkit/HtmlComposerView;->mXCenter:I
    invoke-static {v3}, Landroid/webkit/HtmlComposerView;->access$200(Landroid/webkit/HtmlComposerView;)I

    move-result v3

    if-eq v6, v3, :cond_5

    iget-object v3, p0, Landroid/webkit/HtmlComposerView$1;->this$0:Landroid/webkit/HtmlComposerView;

    #getter for: Landroid/webkit/HtmlComposerView;->mYCenter:I
    invoke-static {v3}, Landroid/webkit/HtmlComposerView;->access$300(Landroid/webkit/HtmlComposerView;)I

    move-result v3

    if-eq v6, v3, :cond_5

    .line 415
    iget-object v3, p0, Landroid/webkit/HtmlComposerView$1;->this$0:Landroid/webkit/HtmlComposerView;

    #getter for: Landroid/webkit/HtmlComposerView;->mResizingHoverImage:Landroid/widget/ImageView;
    invoke-static {v3}, Landroid/webkit/HtmlComposerView;->access$000(Landroid/webkit/HtmlComposerView;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView$1;->this$0:Landroid/webkit/HtmlComposerView;

    #getter for: Landroid/webkit/HtmlComposerView;->mRHIResource:I
    invoke-static {v4}, Landroid/webkit/HtmlComposerView;->access$100(Landroid/webkit/HtmlComposerView;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 417
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 419
    .local v0, tmpLocOnWin:[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 421
    iget-object v3, p0, Landroid/webkit/HtmlComposerView$1;->this$0:Landroid/webkit/HtmlComposerView;

    iget-boolean v3, v3, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSetContentView tmpLocOnWin[0] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,tmpLocOnWin[1] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_3
    iget-object v3, p0, Landroid/webkit/HtmlComposerView$1;->this$0:Landroid/webkit/HtmlComposerView;

    aget v2, v0, v2

    iget-object v4, p0, Landroid/webkit/HtmlComposerView$1;->this$0:Landroid/webkit/HtmlComposerView;

    #getter for: Landroid/webkit/HtmlComposerView;->mXCenter:I
    invoke-static {v4}, Landroid/webkit/HtmlComposerView;->access$200(Landroid/webkit/HtmlComposerView;)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x28

    #setter for: Landroid/webkit/HtmlComposerView;->mXCenter:I
    invoke-static {v3, v2}, Landroid/webkit/HtmlComposerView;->access$202(Landroid/webkit/HtmlComposerView;I)I

    .line 424
    iget-object v2, p0, Landroid/webkit/HtmlComposerView$1;->this$0:Landroid/webkit/HtmlComposerView;

    aget v3, v0, v1

    iget-object v4, p0, Landroid/webkit/HtmlComposerView$1;->this$0:Landroid/webkit/HtmlComposerView;

    #getter for: Landroid/webkit/HtmlComposerView;->mYCenter:I
    invoke-static {v4}, Landroid/webkit/HtmlComposerView;->access$300(Landroid/webkit/HtmlComposerView;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x28

    #setter for: Landroid/webkit/HtmlComposerView;->mYCenter:I
    invoke-static {v2, v3}, Landroid/webkit/HtmlComposerView;->access$302(Landroid/webkit/HtmlComposerView;I)I

    .line 426
    iget-object v2, p0, Landroid/webkit/HtmlComposerView$1;->this$0:Landroid/webkit/HtmlComposerView;

    iget-boolean v2, v2, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSetContentView mXCenter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView$1;->this$0:Landroid/webkit/HtmlComposerView;

    #getter for: Landroid/webkit/HtmlComposerView;->mXCenter:I
    invoke-static {v4}, Landroid/webkit/HtmlComposerView;->access$200(Landroid/webkit/HtmlComposerView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mYCenter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView$1;->this$0:Landroid/webkit/HtmlComposerView;

    #getter for: Landroid/webkit/HtmlComposerView;->mYCenter:I
    invoke-static {v4}, Landroid/webkit/HtmlComposerView;->access$300(Landroid/webkit/HtmlComposerView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_4
    iget-object v2, p0, Landroid/webkit/HtmlComposerView$1;->this$0:Landroid/webkit/HtmlComposerView;

    #getter for: Landroid/webkit/HtmlComposerView;->mXCenter:I
    invoke-static {v2}, Landroid/webkit/HtmlComposerView;->access$200(Landroid/webkit/HtmlComposerView;)I

    move-result v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView$1;->this$0:Landroid/webkit/HtmlComposerView;

    #getter for: Landroid/webkit/HtmlComposerView;->mYCenter:I
    invoke-static {v3}, Landroid/webkit/HtmlComposerView;->access$300(Landroid/webkit/HtmlComposerView;)I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 429
    iget-object v2, p0, Landroid/webkit/HtmlComposerView$1;->this$0:Landroid/webkit/HtmlComposerView;

    #getter for: Landroid/webkit/HtmlComposerView;->mResizingHoverImage:Landroid/widget/ImageView;
    invoke-static {v2}, Landroid/webkit/HtmlComposerView;->access$000(Landroid/webkit/HtmlComposerView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/HoverPopupWindow;->setContent(Landroid/view/View;)V

    goto/16 :goto_0

    .line 431
    .end local v0           #tmpLocOnWin:[I
    :cond_5
    invoke-virtual {p2}, Landroid/widget/HoverPopupWindow;->dismiss()V

    goto/16 :goto_0
.end method
