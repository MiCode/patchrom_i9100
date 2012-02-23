.class Landroid/webkit/HtmlComposerView$ActionPopupWindow;
.super Ljava/lang/Object;
.source "HtmlComposerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HtmlComposerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionPopupWindow"
.end annotation


# static fields
.field private static final POPUP_TEXT_LAYOUT:I = 0x10900a4


# instance fields
.field private mClipboardTextView:Landroid/widget/TextView;

.field protected mContentView:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field public mCursorControllerParent:Landroid/webkit/HtmlComposerView;

.field private mPasteTextView:Landroid/widget/TextView;

.field protected mPopupWindow:Landroid/widget/PopupWindow;

.field final synthetic this$0:Landroid/webkit/HtmlComposerView;


# direct methods
.method public constructor <init>(Landroid/webkit/HtmlComposerView;Landroid/content/Context;Landroid/webkit/HtmlComposerView;)V
    .locals 4
    .parameter
    .parameter "context"
    .parameter "tv"

    .prologue
    const/4 v3, -0x2

    .line 1212
    iput-object p1, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1213
    iput-object p2, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mContext:Landroid/content/Context;

    .line 1214
    iput-object p3, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mCursorControllerParent:Landroid/webkit/HtmlComposerView;

    .line 1215
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->createPopupWindow()V

    .line 1217
    iget-object v1, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 1219
    iget-object v1, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1220
    iget-object v1, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1222
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->initContentView()V

    .line 1224
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1227
    .local v0, wrapContent:Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1229
    iget-object v1, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1230
    return-void
.end method


# virtual methods
.method protected createPopupWindow()V
    .locals 4

    .prologue
    .line 1233
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const v3, 0x10102c8

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 1235
    iget-object v0, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 1236
    return-void
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 1338
    iget-object v0, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1339
    return-void
.end method

.method protected initContentView()V
    .locals 10

    .prologue
    const v9, 0x10900a4

    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 1239
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mCursorControllerParent:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v5}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1241
    .local v3, linearLayout:Landroid/widget/LinearLayout;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1242
    iput-object v3, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 1243
    iget-object v5, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v6, 0x10805b7

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 1246
    iget-object v5, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 1249
    .local v2, inflater:Landroid/view/LayoutInflater;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1253
    .local v4, wrapContent:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v2, v9, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    .line 1255
    iget-object v5, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1256
    iget-object v5, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v6, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1257
    iget-object v5, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    const v6, 0x104000b

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1258
    iget-object v5, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1260
    iget-object v5, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1080345

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1262
    .local v0, drawable1:Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v0, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1277
    invoke-virtual {v2, v9, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    .line 1279
    iget-object v5, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1280
    iget-object v5, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v6, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1281
    iget-object v5, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    const v6, 0x10405b4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1283
    iget-object v5, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1284
    iget-object v5, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1080326

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1288
    .local v1, drawable3:Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v1, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1291
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1334
    iget-object v0, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected measureContent()V
    .locals 5

    .prologue
    const/high16 v4, -0x8000

    .line 1372
    iget-object v1, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1374
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v1, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->measure(II)V

    .line 1379
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 1321
    iget-object v0, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->canPaste()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1322
    iget-object v0, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mCursorControllerParent:Landroid/webkit/HtmlComposerView;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mCursorControllerParent:Landroid/webkit/HtmlComposerView;

    const v1, 0x1020022

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    .line 1324
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->hide()V

    .line 1330
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->this$0:Landroid/webkit/HtmlComposerView;

    const/4 v1, 0x0

    #setter for: Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z
    invoke-static {v0, v1}, Landroid/webkit/HtmlComposerView;->access$002(Landroid/webkit/HtmlComposerView;Z)Z

    .line 1331
    return-void

    .line 1325
    :cond_1
    iget-object v0, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 1326
    iget-object v0, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mCursorControllerParent:Landroid/webkit/HtmlComposerView;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mCursorControllerParent:Landroid/webkit/HtmlComposerView;

    const v1, 0x102040a

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    .line 1328
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->hide()V

    goto :goto_0
.end method

.method positionAtCursor()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1342
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1343
    .local v0, ComposerRect:Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1345
    .local v1, CursorRect:Landroid/graphics/Rect;
    iget-object v9, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mCursorControllerParent:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v9, v12}, Landroid/webkit/HtmlComposerView;->getCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v1

    .line 1346
    iget-object v9, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mCursorControllerParent:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v9, v0}, Landroid/webkit/HtmlComposerView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1348
    const/4 v9, 0x2

    new-array v8, v9, [I

    .line 1349
    .local v8, tmpLocOnWin:[I
    iget-object v9, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mCursorControllerParent:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v9, v8}, Landroid/webkit/HtmlComposerView;->getLocationInWindow([I)V

    .line 1351
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->measureContent()V

    .line 1352
    iget-object v9, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v9}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    .line 1353
    .local v2, contentView:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 1354
    .local v4, popupwidth:I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 1356
    .local v3, popupheight:I
    aget v9, v8, v11

    iget v10, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v10

    div-int/lit8 v10, v4, 0x2

    sub-int v5, v9, v10

    .line 1357
    .local v5, pos_x:I
    aget v9, v8, v12

    iget v10, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v10

    sub-int v6, v9, v3

    .line 1359
    .local v6, pos_y:I
    iget-object v9, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v7, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1361
    .local v7, screenWidth:I
    if-gez v5, :cond_1

    .line 1362
    const/4 v5, 0x0

    .line 1367
    :cond_0
    :goto_0
    iget-object v9, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v10, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mCursorControllerParent:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v9, v10, v11, v5, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1369
    return-void

    .line 1363
    :cond_1
    add-int v9, v5, v4

    if-ge v7, v9, :cond_0

    .line 1364
    sub-int v5, v7, v4

    goto :goto_0
.end method

.method public show()V
    .locals 6

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1294
    iget-object v2, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->canPaste()Z

    move-result v0

    .line 1297
    .local v0, canPaste:Z
    iget-object v5, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1303
    iget-object v2, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mCursorControllerParent:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v5, "clipboardEx"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/ClipboardExManager;

    .line 1305
    .local v1, clipEx:Landroid/sec/clipboard/ClipboardExManager;
    iget-object v2, p0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1313
    if-nez v0, :cond_2

    .line 1318
    :goto_2
    return-void

    .end local v1           #clipEx:Landroid/sec/clipboard/ClipboardExManager;
    :cond_0
    move v2, v4

    .line 1297
    goto :goto_0

    .restart local v1       #clipEx:Landroid/sec/clipboard/ClipboardExManager;
    :cond_1
    move v3, v4

    .line 1305
    goto :goto_1

    .line 1317
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->positionAtCursor()V

    goto :goto_2
.end method
