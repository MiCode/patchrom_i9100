.class public Lcom/sec/android/glview/TwGLSelectButton;
.super Lcom/sec/android/glview/TwGLButton;
.source "TwGLSelectButton.java"


# instance fields
.field protected mSelected:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFII)V
    .locals 8
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "offId"
    .parameter "onId"

    .prologue
    const/4 v6, 0x0

    .line 57
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    .line 34
    iput-boolean v6, p0, Lcom/sec/android/glview/TwGLSelectButton;->mSelected:Z

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFIII)V
    .locals 8
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "offId"
    .parameter "onId"
    .parameter "highlightId"

    .prologue
    const/4 v6, 0x0

    .line 71
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    .line 34
    iput-boolean v6, p0, Lcom/sec/android/glview/TwGLSelectButton;->mSelected:Z

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V
    .locals 1
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "normalId"
    .parameter "pressedId"
    .parameter "dimmedId"
    .parameter "npHighlightId"

    .prologue
    .line 86
    invoke-direct/range {p0 .. p7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLSelectButton;->mSelected:Z

    .line 87
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFIIIII)V
    .locals 1
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "normalId"
    .parameter "pressedId"
    .parameter "dimmedId"
    .parameter "width"
    .parameter "heigth"

    .prologue
    .line 102
    invoke-direct/range {p0 .. p8}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIIII)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLSelectButton;->mSelected:Z

    .line 103
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;II)V
    .locals 6
    .parameter "glContext"
    .parameter "offId"
    .parameter "onId"

    .prologue
    const/4 v4, 0x0

    .line 44
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;IIII)V

    .line 34
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLSelectButton;->mSelected:Z

    .line 45
    return-void
.end method


# virtual methods
.method public getSelected()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLSelectButton;->mSelected:Z

    return v0
.end method

.method protected onDraw(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 3
    .parameter "gl"

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLSelectButton;->mSelected:Z

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSelectButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSelectButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSelectButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSelectButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 171
    :goto_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSelectButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSelectButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLText;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 174
    :cond_1
    return-void

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSelectButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSelectButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "e"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v1

    .line 133
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_5

    .line 134
    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLSelectButton;->mSelected:Z

    if-eqz v2, :cond_4

    .line 135
    invoke-virtual {p0, v5}, Lcom/sec/android/glview/TwGLSelectButton;->setSelected(Z)V

    .line 140
    :goto_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    if-eqz v2, :cond_0

    .line 141
    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    if-nez v2, :cond_2

    .line 142
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSelectButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 143
    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 145
    .end local v0           #am:Landroid/media/AudioManager;
    :cond_2
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSelectButton;->getVisibility()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSelectButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->isScreenReaderActive()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSelectButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 146
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSelectButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 147
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSelectButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mTitle:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 150
    :cond_3
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    invoke-interface {v2, p0}, Lcom/sec/android/glview/TwGLView$OnClickListener;->onClick(Lcom/sec/android/glview/TwGLView;)Z

    goto :goto_0

    .line 137
    :cond_4
    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLSelectButton;->setSelected(Z)V

    goto :goto_1

    .line 155
    :cond_5
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 1
    .parameter "selected"

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLSelectButton;->mSelected:Z

    if-eq v0, p1, :cond_0

    .line 112
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLSelectButton;->mSelected:Z

    .line 114
    :cond_0
    return-void
.end method
