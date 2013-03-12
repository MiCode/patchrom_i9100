.class public interface abstract Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;
.super Ljava/lang/Object;
.source "CircleUnlockWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;,
        Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;
    }
.end annotation


# virtual methods
.method public abstract cleanUp()V
.end method

.method public abstract handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract setOnCircleTouchListener(Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;)V
.end method

.method public abstract setOnCircleUnlockListener(Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;)V
.end method
