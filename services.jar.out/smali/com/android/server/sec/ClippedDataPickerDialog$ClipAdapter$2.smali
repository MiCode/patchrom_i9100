.class Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter$2;
.super Ljava/lang/Object;
.source "ClippedDataPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->setOnTouchListenerToWebView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1672
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter$2;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1676
    iget-object v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter$2;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;

    iget-object v5, v5, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-boolean v5, v5, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridViewAniGoingOn:Z

    if-eqz v5, :cond_1

    .line 1705
    :cond_0
    :goto_0
    return v3

    .line 1679
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v4, :cond_2

    .line 1681
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1682
    .local v2, outRect:Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1683
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 1685
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1686
    iget-object v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter$2;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;

    iget-object v5, v5, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v5, v5, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    invoke-virtual {v5, p1}, Lcom/android/server/sec/ClippedDataPickerGridView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 1688
    .local v1, index:I
    invoke-virtual {p1, v3}, Landroid/view/View;->playSoundEffect(I)V

    .line 1690
    :try_start_0
    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter$2;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;

    iget-object v3, v3, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;
    invoke-static {v3}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$300(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/IClipboardDataUiEvent;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter$2;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;

    iget-object v5, v5, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;
    invoke-static {v5}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1300(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v5

    invoke-interface {v3, v1, v5}, Landroid/sec/clipboard/IClipboardDataUiEvent;->selectItem(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v3, v4

    .line 1698
    goto :goto_0

    .line 1691
    :catch_0
    move-exception v0

    .line 1693
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1700
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #index:I
    .end local v2           #outRect:Landroid/graphics/Rect;
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_3

    .line 1701
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 1702
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 1703
    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0
.end method
