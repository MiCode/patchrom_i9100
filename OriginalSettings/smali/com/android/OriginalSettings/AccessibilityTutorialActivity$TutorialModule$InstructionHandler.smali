.class Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TutorialModule$InstructionHandler;
.super Landroid/os/Handler;
.source "AccessibilityTutorialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TutorialModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstructionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TutorialModule;


# direct methods
.method private constructor <init>(Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TutorialModule;)V
    .locals 0
    .parameter

    .prologue
    .line 671
    iput-object p1, p0, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TutorialModule$InstructionHandler;->this$0:Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TutorialModule;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TutorialModule;Lcom/android/OriginalSettings/AccessibilityTutorialActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 671
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TutorialModule$InstructionHandler;-><init>(Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TutorialModule;)V

    return-void
.end method


# virtual methods
.method public addInstruction(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 685
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TutorialModule$InstructionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 686
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 676
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 682
    :goto_0
    return-void

    .line 678
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 679
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TutorialModule$InstructionHandler;->this$0:Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TutorialModule;

    #calls: Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TutorialModule;->addInstructionSync(Ljava/lang/CharSequence;)V
    invoke-static {v1, v0}, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TutorialModule;->access$1000(Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TutorialModule;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 676
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
