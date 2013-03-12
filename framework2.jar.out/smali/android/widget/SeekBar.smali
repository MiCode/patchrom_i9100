.class public Landroid/widget/SeekBar;
.super Landroid/widget/AbsSeekBar;
.source "SeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SeekBar$OnSeekBarChangeKeyListener;,
        Landroid/widget/SeekBar$OnSeekBarHoverListener;,
        Landroid/widget/SeekBar$OnSeekBarChangeListener;
    }
.end annotation


# instance fields
.field private mOnSeekBarChangeKeyListener:Landroid/widget/SeekBar$OnSeekBarChangeKeyListener;

.field private mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mOnSeekBarHoverListener:Landroid/widget/SeekBar$OnSeekBarHoverListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 80
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    return-void
.end method


# virtual methods
.method onHoverChanged(III)V
    .locals 2
    .parameter "hoverLevel"
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 174
    iget-object v0, p0, Landroid/widget/SeekBar;->mOnSeekBarHoverListener:Landroid/widget/SeekBar$OnSeekBarHoverListener;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Landroid/widget/SeekBar;->mOnSeekBarHoverListener:Landroid/widget/SeekBar$OnSeekBarHoverListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, p1, v1}, Landroid/widget/SeekBar$OnSeekBarHoverListener;->onHoverChanged(Landroid/widget/SeekBar;IZ)V

    .line 177
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsSeekBar;->onHoverChanged(III)V

    .line 178
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 127
    const-class v0, Landroid/widget/SeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 128
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 133
    const-class v0, Landroid/widget/SeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 134
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 195
    iget-object v0, p0, Landroid/widget/SeekBar;->mOnSeekBarChangeKeyListener:Landroid/widget/SeekBar$OnSeekBarChangeKeyListener;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Landroid/widget/SeekBar;->mOnSeekBarChangeKeyListener:Landroid/widget/SeekBar$OnSeekBarChangeKeyListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/SeekBar$OnSeekBarChangeKeyListener;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 198
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method onProgressRefresh(FZ)V
    .locals 2
    .parameter "scale"
    .parameter "fromUser"

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSeekBar;->onProgressRefresh(FZ)V

    .line 91
    iget-object v0, p0, Landroid/widget/SeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Landroid/widget/SeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-interface {v0, p0, v1, p2}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 94
    :cond_0
    return-void
.end method

.method onStartTrackingHover(III)V
    .locals 1
    .parameter "hoverLevel"
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 158
    iget-object v0, p0, Landroid/widget/SeekBar;->mOnSeekBarHoverListener:Landroid/widget/SeekBar$OnSeekBarHoverListener;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Landroid/widget/SeekBar;->mOnSeekBarHoverListener:Landroid/widget/SeekBar$OnSeekBarHoverListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/SeekBar$OnSeekBarHoverListener;->onStartTrackingHover(Landroid/widget/SeekBar;I)V

    .line 161
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsSeekBar;->onStartTrackingHover(III)V

    .line 162
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 111
    iget-object v0, p0, Landroid/widget/SeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Landroid/widget/SeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 114
    :cond_0
    return-void
.end method

.method onStopTrackingHover()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Landroid/widget/SeekBar;->mOnSeekBarHoverListener:Landroid/widget/SeekBar$OnSeekBarHoverListener;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Landroid/widget/SeekBar;->mOnSeekBarHoverListener:Landroid/widget/SeekBar$OnSeekBarHoverListener;

    invoke-interface {v0, p0}, Landroid/widget/SeekBar$OnSeekBarHoverListener;->onStopTrackingHover(Landroid/widget/SeekBar;)V

    .line 169
    :cond_0
    invoke-super {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingHover()V

    .line 170
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 119
    iget-object v0, p0, Landroid/widget/SeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Landroid/widget/SeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 122
    :cond_0
    return-void
.end method

.method public setOnSeekBarChangeKeyListener(Landroid/widget/SeekBar$OnSeekBarChangeKeyListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 190
    iput-object p1, p0, Landroid/widget/SeekBar;->mOnSeekBarChangeKeyListener:Landroid/widget/SeekBar$OnSeekBarChangeKeyListener;

    .line 191
    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 105
    iput-object p1, p0, Landroid/widget/SeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 106
    return-void
.end method

.method public setOnSeekBarHoverListener(Landroid/widget/SeekBar$OnSeekBarHoverListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 153
    iput-object p1, p0, Landroid/widget/SeekBar;->mOnSeekBarHoverListener:Landroid/widget/SeekBar$OnSeekBarHoverListener;

    .line 154
    return-void
.end method
