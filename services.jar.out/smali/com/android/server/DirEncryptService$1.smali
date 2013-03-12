.class Lcom/android/server/DirEncryptService$1;
.super Ljava/lang/Object;
.source "DirEncryptService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DirEncryptService;->onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DirEncryptService;

.field final synthetic val$code:I

.field final synthetic val$cooked:[Ljava/lang/String;

.field final synthetic val$raw:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/DirEncryptService;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/server/DirEncryptService$1;->this$0:Lcom/android/server/DirEncryptService;

    iput p2, p0, Lcom/android/server/DirEncryptService$1;->val$code:I

    iput-object p3, p0, Lcom/android/server/DirEncryptService$1;->val$raw:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/DirEncryptService$1;->val$cooked:[Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/server/DirEncryptService$1;->this$0:Lcom/android/server/DirEncryptService;

    #getter for: Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;
    invoke-static {v0}, Lcom/android/server/DirEncryptService;->access$000(Lcom/android/server/DirEncryptService;)Lcom/android/server/DirEncryptServiceHelper;

    move-result-object v0

    iget v1, p0, Lcom/android/server/DirEncryptService$1;->val$code:I

    iget-object v2, p0, Lcom/android/server/DirEncryptService$1;->val$raw:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/DirEncryptService$1;->val$cooked:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->onEventInner(ILjava/lang/String;[Ljava/lang/String;)Z

    .line 148
    return-void
.end method
