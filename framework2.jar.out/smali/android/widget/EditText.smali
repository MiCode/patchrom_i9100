.class public Landroid/widget/EditText;
.super Landroid/widget/TextView;
.source "EditText.java"


# instance fields
.field private mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 72
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboardEx"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    iput-object v0, p0, Landroid/widget/EditText;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    .line 81
    return-void
.end method


# virtual methods
.method public dispatchWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasFocus"

    .prologue
    .line 183
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchWindowFocusChanged(Z)V

    .line 186
    invoke-virtual {p0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 189
    instance-of v0, p0, Landroid/inputmethodservice/ExtractEditText;

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Landroid/widget/EditText;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Landroid/widget/EditText;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/widget/TextView;->mPasteEvent:Landroid/widget/TextView$IClipboardDataPasteEventImpl;

    invoke-virtual {v0, v1, v2}, Landroid/sec/clipboard/ClipboardExManager;->updateData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 196
    :cond_0
    return-void
.end method

.method public extendSelection(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 128
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 129
    return-void
.end method

.method protected getDefaultEditable()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method protected getDefaultMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    return-object v0
.end method

.method public getText()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    return-object v0
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public hideCursorControllers()V
    .locals 0

    .prologue
    .line 160
    invoke-super {p0}, Landroid/widget/TextView;->hideCursorControllers()V

    .line 161
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 168
    if-eqz p1, :cond_0

    .line 171
    instance-of v0, p0, Landroid/inputmethodservice/ExtractEditText;

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Landroid/widget/EditText;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Landroid/widget/EditText;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/widget/TextView;->mPasteEvent:Landroid/widget/TextView$IClipboardDataPasteEventImpl;

    invoke-virtual {v0, v1, v2}, Landroid/sec/clipboard/ClipboardExManager;->updateData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 178
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 179
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 201
    invoke-virtual {p0}, Landroid/widget/EditText;->isHoveringUIEnabled()Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 203
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/EditText;->isTextEditable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 205
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 206
    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "TextView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hover icon is failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 143
    const-class v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 144
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 148
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 149
    const-class v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 150
    return-void
.end method

.method public selectAll()V
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    .line 122
    return-void
.end method

.method public setCursorColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 154
    invoke-super {p0, p1}, Landroid/widget/TextView;->setCursorColor(I)V

    .line 155
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 2
    .parameter "ellipsis"

    .prologue
    .line 133
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne p1, v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EditText cannot use the ellipsize mode TextUtils.TruncateAt.MARQUEE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 138
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 114
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 115
    return-void
.end method

.method public setSelection(II)V
    .locals 1
    .parameter "start"
    .parameter "stop"

    .prologue
    .line 107
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 108
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1
    .parameter "text"
    .parameter "type"

    .prologue
    .line 100
    sget-object v0, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-super {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 101
    return-void
.end method
