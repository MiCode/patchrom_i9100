.class Lcom/android/server/accessibility/AccessibilityManagerService$Service$1;
.super Landroid/os/Handler;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService$Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 1181
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "message"

    .prologue
    .line 1184
    iget v2, p1, Landroid/os/Message;->what:I

    .line 1185
    .local v2, type:I
    packed-switch v2, :pswitch_data_0

    .line 1191
    move v0, v2

    .line 1192
    .local v0, eventType:I
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService$Service;->notifyAccessibilityEventInternal(I)V
    invoke-static {v3, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->access$2400(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)V

    .line 1195
    .end local v0           #eventType:I
    :goto_0
    return-void

    .line 1187
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1188
    .local v1, gestureId:I
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService$Service;->notifyGestureInternal(I)V
    invoke-static {v3, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->access$2300(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)V

    goto :goto_0

    .line 1185
    :pswitch_data_0
    .packed-switch -0x80000000
        :pswitch_0
    .end packed-switch
.end method
