.class Landroid/inputmethodservice/InputMethodService$2;
.super Ljava/lang/Object;
.source "InputMethodService.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 386
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 390
    .local v0, decor:Landroid/view/View;
    iget-object v1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 392
    iget-object v1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->setEmpty()V

    .line 393
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 401
    .end local v0           #decor:Landroid/view/View;
    :goto_0
    return-void

    .line 395
    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v2, v2, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/InputMethodService;->onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V

    .line 396
    iget-object v1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v2, v2, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 397
    iget-object v1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v2, v2, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 398
    iget-object v1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v2, v2, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget-object v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 399
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v1, v1, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v1, v1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    goto :goto_0
.end method
