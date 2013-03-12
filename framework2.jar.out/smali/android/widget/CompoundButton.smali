.class public abstract Landroid/widget/CompoundButton;
.super Landroid/widget/Button;
.source "CompoundButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CompoundButton$1;,
        Landroid/widget/CompoundButton$SavedState;,
        Landroid/widget/CompoundButton$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mBroadcasting:Z

.field private mButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mButtonResource:I

.field private mChecked:Z

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Landroid/widget/CompoundButton;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    sget-object v3, Lcom/android/internal/R$styleable;->CompoundButton:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 79
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 80
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 81
    invoke-virtual {p0, v2}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    :cond_0
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 86
    .local v1, checked:Z
    invoke-virtual {p0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 88
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 274
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    .line 276
    iget-object v1, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 277
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v0

    .line 280
    .local v0, myDrawableState:[I
    iget-object v1, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 282
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    .line 284
    .end local v0           #myDrawableState:[I
    :cond_0
    return-void
.end method

.method public isChecked()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 110
    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mChecked:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 293
    invoke-super {p0}, Landroid/widget/Button;->jumpDrawablesToCurrentState()V

    .line 294
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 295
    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .parameter "extraSpace"

    .prologue
    .line 265
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 266
    .local v0, drawableState:[I
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    sget-object v1, Landroid/widget/CompoundButton;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/widget/CompoundButton;->mergeDrawableStates([I[I)[I

    .line 269
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 240
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 242
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 243
    .local v0, buttonDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getGravity()I

    move-result v4

    and-int/lit8 v2, v4, 0x70

    .line 245
    .local v2, verticalGravity:I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 247
    .local v1, height:I
    const/4 v3, 0x0

    .line 249
    .local v3, y:I
    sparse-switch v2, :sswitch_data_0

    .line 258
    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int v6, v3, v1

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 259
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 261
    .end local v1           #height:I
    .end local v2           #verticalGravity:I
    .end local v3           #y:I
    :cond_0
    return-void

    .line 251
    .restart local v1       #height:I
    .restart local v2       #verticalGravity:I
    .restart local v3       #y:I
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getHeight()I

    move-result v4

    sub-int v3, v4, v1

    .line 252
    goto :goto_0

    .line 254
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getHeight()I

    move-result v4

    sub-int/2addr v4, v1

    div-int/lit8 v3, v4, 0x2

    goto :goto_0

    .line 249
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 225
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 226
    const-class v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 227
    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 228
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 232
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 233
    const-class v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 234
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 235
    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 236
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 354
    move-object v0, p1

    check-cast v0, Landroid/widget/CompoundButton$SavedState;

    .line 356
    .local v0, ss:Landroid/widget/CompoundButton$SavedState;
    invoke-virtual {v0}, Landroid/widget/CompoundButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/Button;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 357
    iget-boolean v1, v0, Landroid/widget/CompoundButton$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 358
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    .line 359
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 343
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/widget/CompoundButton;->setFreezesText(Z)V

    .line 344
    invoke-super {p0}, Landroid/widget/Button;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 346
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Landroid/widget/CompoundButton$SavedState;

    invoke-direct {v0, v1}, Landroid/widget/CompoundButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 348
    .local v0, ss:Landroid/widget/CompoundButton$SavedState;
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Landroid/widget/CompoundButton$SavedState;->checked:Z

    .line 349
    return-object v0
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->toggle()V

    .line 105
    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    move-result v0

    return v0
.end method

.method public setButtonDrawable(I)V
    .locals 3
    .parameter "resid"

    .prologue
    .line 188
    if-eqz p1, :cond_0

    iget v1, p0, Landroid/widget/CompoundButton;->mButtonResource:I

    if-ne p1, v1, :cond_0

    .line 199
    :goto_0
    return-void

    .line 192
    :cond_0
    iput p1, p0, Landroid/widget/CompoundButton;->mButtonResource:I

    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget v1, p0, Landroid/widget/CompoundButton;->mButtonResource:I

    if-eqz v1, :cond_1

    .line 196
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Landroid/widget/CompoundButton;->mButtonResource:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 198
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "d"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 207
    if-eqz p1, :cond_1

    .line 208
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 210
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    :cond_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 213
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 214
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 215
    iput-object p1, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 216
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 217
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setMinHeight(I)V

    .line 220
    :cond_1
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->refreshDrawableState()V

    .line 221
    return-void

    :cond_2
    move v0, v1

    .line 214
    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 3
    .parameter "checked"

    .prologue
    .line 119
    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 120
    iput-boolean p1, p0, Landroid/widget/CompoundButton;->mChecked:Z

    .line 121
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->refreshDrawableState()V

    .line 122
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->notifyAccessibilityStateChanged()V

    .line 125
    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mBroadcasting:Z

    if-eqz v0, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    const-string v0, "service.gate.enabled"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    const-string v1, "GATE"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<GATE-M>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mChecked:Z

    if-eqz v0, :cond_5

    const-string v0, "CHECKED"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</GATE-M>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/CompoundButton;->mBroadcasting:Z

    .line 136
    iget-object v0, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_3

    .line 137
    iget-object v0, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-boolean v1, p0, Landroid/widget/CompoundButton;->mChecked:Z

    invoke-interface {v0, p0, v1}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 139
    :cond_3
    iget-object v0, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_4

    .line 140
    iget-object v0, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-boolean v1, p0, Landroid/widget/CompoundButton;->mChecked:Z

    invoke-interface {v0, p0, v1}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 143
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/CompoundButton;->mBroadcasting:Z

    goto :goto_0

    .line 132
    :cond_5
    const-string v0, ""

    goto :goto_1
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 154
    iput-object p1, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 155
    return-void
.end method

.method setOnCheckedChangeWidgetListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 165
    iput-object p1, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 166
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 93
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 288
    invoke-super {p0, p1}, Landroid/widget/Button;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
