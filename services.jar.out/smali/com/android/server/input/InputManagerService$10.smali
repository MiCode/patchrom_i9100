.class Lcom/android/server/input/InputManagerService$10;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/InputManagerService;->getKeyboardLayoutOverlay(Ljava/lang/String;)[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;

.field final synthetic val$result:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1473
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$10;->this$0:Lcom/android/server/input/InputManagerService;

    iput-object p2, p0, Lcom/android/server/input/InputManagerService$10;->val$result:[Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitKeyboardLayout(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter "resources"
    .parameter "descriptor"
    .parameter "label"
    .parameter "collection"
    .parameter "keyboardLayoutResId"

    .prologue
    .line 1478
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$10;->val$result:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 1479
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$10;->val$result:[Ljava/lang/String;

    const/4 v1, 0x1

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1, p5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2}, Llibcore/io/Streams;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1484
    :goto_0
    return-void

    .line 1482
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1481
    :catch_1
    move-exception v0

    goto :goto_0
.end method
