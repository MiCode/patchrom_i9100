.class Lcom/android/server/input/InputManagerService$5;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/InputManagerService;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;

.field final synthetic val$result:[Landroid/hardware/input/KeyboardLayout;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;[Landroid/hardware/input/KeyboardLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 775
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$5;->this$0:Lcom/android/server/input/InputManagerService;

    iput-object p2, p0, Lcom/android/server/input/InputManagerService$5;->val$result:[Landroid/hardware/input/KeyboardLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitKeyboardLayout(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "resources"
    .parameter "descriptor"
    .parameter "label"
    .parameter "collection"
    .parameter "keyboardLayoutResId"

    .prologue
    .line 779
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$5;->val$result:[Landroid/hardware/input/KeyboardLayout;

    const/4 v1, 0x0

    new-instance v2, Landroid/hardware/input/KeyboardLayout;

    invoke-direct {v2, p2, p3, p4}, Landroid/hardware/input/KeyboardLayout;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 780
    return-void
.end method
