.class Lcom/sec/android/app/fm/IntennaTestActivity$1;
.super Ljava/lang/Object;
.source "IntennaTestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/IntennaTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/IntennaTestActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/IntennaTestActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/sec/android/app/fm/IntennaTestActivity$1;->this$0:Lcom/sec/android/app/fm/IntennaTestActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 272
    iget-object v0, p0, Lcom/sec/android/app/fm/IntennaTestActivity$1;->this$0:Lcom/sec/android/app/fm/IntennaTestActivity;

    const/4 v1, 0x2

    #calls: Lcom/sec/android/app/fm/IntennaTestActivity;->readThreshold(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/fm/IntennaTestActivity;->access$000(Lcom/sec/android/app/fm/IntennaTestActivity;I)V

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/fm/IntennaTestActivity$1;->this$0:Lcom/sec/android/app/fm/IntennaTestActivity;

    #calls: Lcom/sec/android/app/fm/IntennaTestActivity;->UpdateIntennaTest()V
    invoke-static {v0}, Lcom/sec/android/app/fm/IntennaTestActivity;->access$100(Lcom/sec/android/app/fm/IntennaTestActivity;)V

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/fm/IntennaTestActivity$1;->this$0:Lcom/sec/android/app/fm/IntennaTestActivity;

    #getter for: Lcom/sec/android/app/fm/IntennaTestActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/fm/IntennaTestActivity;->access$300(Lcom/sec/android/app/fm/IntennaTestActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/fm/IntennaTestActivity$1;->this$0:Lcom/sec/android/app/fm/IntennaTestActivity;

    #getter for: Lcom/sec/android/app/fm/IntennaTestActivity;->doUpdate:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sec/android/app/fm/IntennaTestActivity;->access$200(Lcom/sec/android/app/fm/IntennaTestActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 275
    return-void
.end method
