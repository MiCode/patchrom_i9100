.class public Landroid/webkit/HtmlComposerView$HCWHandler;
.super Landroid/os/Handler;
.source "HtmlComposerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HtmlComposerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HCWHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HtmlComposerView;


# direct methods
.method public constructor <init>(Landroid/webkit/HtmlComposerView;)V
    .locals 0
    .parameter

    .prologue
    .line 2524
    iput-object p1, p0, Landroid/webkit/HtmlComposerView$HCWHandler;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 2526
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 2558
    :cond_0
    :goto_0
    return-void

    .line 2528
    :pswitch_0
    iget-object v2, p0, Landroid/webkit/HtmlComposerView$HCWHandler;->this$0:Landroid/webkit/HtmlComposerView;

    sget v3, Landroid/webkit/HtmlComposerView;->operSel:I

    invoke-virtual {v2, v3}, Landroid/webkit/HtmlComposerView;->invokeTexttoSpeech(I)V

    goto :goto_0

    .line 2531
    :pswitch_1
    const-string v2, "HtmlComposerView"

    const-string v3, "HCWHandler UPDATE_RICHTEXT_TOOLBAR"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2532
    iget-object v2, p0, Landroid/webkit/HtmlComposerView$HCWHandler;->this$0:Landroid/webkit/HtmlComposerView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    goto :goto_0

    .line 2536
    :pswitch_2
    const-string v2, "HtmlComposerView"

    const-string v3, "HIT_INSERTED_IMAGE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 2538
    .local v0, imageUri:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 2539
    iget-object v2, p0, Landroid/webkit/HtmlComposerView$HCWHandler;->this$0:Landroid/webkit/HtmlComposerView;

    iget-boolean v2, v2, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HIT_INSERTED_IMAGE Selected imageUri = [ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2542
    :cond_1
    iget-object v2, p0, Landroid/webkit/HtmlComposerView$HCWHandler;->this$0:Landroid/webkit/HtmlComposerView;

    iget-object v2, v2, Landroid/webkit/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkit/HtmlComposerView$InsertedImageHitListener;

    if-eqz v2, :cond_0

    .line 2543
    iget-object v2, p0, Landroid/webkit/HtmlComposerView$HCWHandler;->this$0:Landroid/webkit/HtmlComposerView;

    iget-object v2, v2, Landroid/webkit/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkit/HtmlComposerView$InsertedImageHitListener;

    invoke-interface {v2, v0}, Landroid/webkit/HtmlComposerView$InsertedImageHitListener;->onHitResult(Ljava/lang/String;)V

    goto :goto_0

    .line 2548
    .end local v0           #imageUri:Ljava/lang/String;
    :pswitch_3
    const-string v2, "HtmlComposerView"

    const-string v3, "DELAYED_UPDATE_IMAGE_OUTLINE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2550
    iget-object v2, p0, Landroid/webkit/HtmlComposerView$HCWHandler;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->getSelectedImageRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 2551
    .local v1, updateRect:Landroid/graphics/Rect;
    iget-object v2, p0, Landroid/webkit/HtmlComposerView$HCWHandler;->this$0:Landroid/webkit/HtmlComposerView;

    iget-boolean v2, v2, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DELAYED_UPDATE_IMAGE_OUTLINE result = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2553
    :cond_2
    iget-object v2, p0, Landroid/webkit/HtmlComposerView$HCWHandler;->this$0:Landroid/webkit/HtmlComposerView;

    iget-object v3, p0, Landroid/webkit/HtmlComposerView$HCWHandler;->this$0:Landroid/webkit/HtmlComposerView;

    #getter for: Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/webkit/HtmlComposerView;->access$1100(Landroid/webkit/HtmlComposerView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/webkit/HtmlComposerView;->outlineDrawRect(Landroid/content/Context;Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 2526
    nop

    :pswitch_data_0
    .packed-switch 0x500
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
