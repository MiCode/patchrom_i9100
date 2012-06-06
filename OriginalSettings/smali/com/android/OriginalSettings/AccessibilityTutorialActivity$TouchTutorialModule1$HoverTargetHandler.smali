.class Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;
.super Landroid/os/Handler;
.source "AccessibilityTutorialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HoverTargetHandler"
.end annotation


# instance fields
.field private mInsideTarget:Z

.field final synthetic this$0:Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;


# direct methods
.method private constructor <init>(Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;)V
    .locals 1
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;->this$0:Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;->mInsideTarget:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;Lcom/android/OriginalSettings/AccessibilityTutorialActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 277
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;-><init>(Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;)V

    return-void
.end method


# virtual methods
.method public enteredTarget()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 284
    iput-boolean v3, p0, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;->mInsideTarget:Z

    .line 285
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;->this$0:Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;

    #getter for: Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->mHandler:Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;
    invoke-static {v0}, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->access$300(Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;)Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 286
    return-void
.end method

.method public exitedTarget()V
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;->mInsideTarget:Z

    .line 290
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 294
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 306
    :goto_0
    return-void

    .line 296
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;->mInsideTarget:Z

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;->this$0:Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;

    const v1, 0x7f0b06a5

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;->this$0:Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;

    #getter for: Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->mTargetName:Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->access$400(Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->addInstruction(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;->this$0:Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;

    const v1, 0x7f0b06a6

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;->this$0:Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;

    #getter for: Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->mTargetName:Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->access$400(Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->addInstruction(I[Ljava/lang/Object;)V

    .line 302
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;->this$0:Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4}, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->setFlag(IZ)V

    goto :goto_0

    .line 294
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
