.class Lcom/android/server/NsdService$NativeEvent;
.super Ljava/lang/Object;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NsdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeEvent"
.end annotation


# instance fields
.field code:I

.field raw:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/NsdService;


# direct methods
.method constructor <init>(Lcom/android/server/NsdService;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "code"
    .parameter "raw"

    .prologue
    .line 488
    iput-object p1, p0, Lcom/android/server/NsdService$NativeEvent;->this$0:Lcom/android/server/NsdService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 489
    iput p2, p0, Lcom/android/server/NsdService$NativeEvent;->code:I

    .line 490
    iput-object p3, p0, Lcom/android/server/NsdService$NativeEvent;->raw:Ljava/lang/String;

    .line 491
    return-void
.end method
