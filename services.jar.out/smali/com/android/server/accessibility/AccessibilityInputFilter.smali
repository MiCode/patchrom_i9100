.class public Lcom/android/server/accessibility/AccessibilityInputFilter;
.super Lcom/android/server/input/InputFilter;
.source "AccessibilityInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilityInputFilter$Explorer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AccessibilityInputFilter"


# instance fields
.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mContext:Landroid/content/Context;

.field private final mPm:Landroid/os/PowerManager;

.field private mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

.field private mTouchscreenSourceDeviceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 1
    .parameter "context"
    .parameter "service"

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/input/InputFilter;-><init>(Landroid/os/Looper;)V

    .line 78
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 80
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mPm:Landroid/os/PowerManager;

    .line 81
    return-void
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/TouchExplorer;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 129
    :cond_0
    return-void
.end method

.method public onInputEvent(Landroid/view/InputEvent;I)V
    .locals 6
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v2

    const/16 v3, 0x1002

    if-ne v2, v3, :cond_2

    move-object v1, p1

    .line 108
    check-cast v1, Landroid/view/MotionEvent;

    .line 109
    .local v1, motionEvent:Landroid/view/MotionEvent;
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDeviceId()I

    move-result v0

    .line 110
    .local v0, deviceId:I
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchscreenSourceDeviceId:I

    if-eq v2, v0, :cond_0

    .line 111
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchscreenSourceDeviceId:I

    .line 112
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    invoke-virtual {v2, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    .line 114
    :cond_0
    const/high16 v2, 0x4000

    and-int/2addr v2, p2

    if-eqz v2, :cond_1

    .line 115
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mPm:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/view/InputEvent;->getEventTime()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 116
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    invoke-virtual {v2, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->onMotionEvent(Landroid/view/MotionEvent;I)V

    .line 123
    .end local v0           #deviceId:I
    .end local v1           #motionEvent:Landroid/view/MotionEvent;
    :goto_0
    return-void

    .line 118
    .restart local v0       #deviceId:I
    .restart local v1       #motionEvent:Landroid/view/MotionEvent;
    :cond_1
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    invoke-virtual {v2, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 121
    .end local v0           #deviceId:I
    .end local v1           #motionEvent:Landroid/view/MotionEvent;
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/server/input/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_0
.end method

.method public onInstalled()V
    .locals 3

    .prologue
    .line 88
    new-instance v0, Lcom/android/server/accessibility/TouchExplorer;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/accessibility/TouchExplorer;-><init>(Lcom/android/server/input/InputFilter;Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    .line 89
    invoke-super {p0}, Lcom/android/server/input/InputFilter;->onInstalled()V

    .line 90
    return-void
.end method

.method public onUninstalled()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer;->clear()V

    .line 98
    invoke-super {p0}, Lcom/android/server/input/InputFilter;->onUninstalled()V

    .line 99
    return-void
.end method
