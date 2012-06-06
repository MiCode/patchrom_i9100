.class Lcom/android/OriginalSettings/applications/InstalledAppDetails$1;
.super Landroid/os/Handler;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$1;->this$0:Lcom/android/OriginalSettings/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$1;->this$0:Lcom/android/OriginalSettings/applications/InstalledAppDetails;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 172
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 174
    :pswitch_1
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$1;->this$0:Lcom/android/OriginalSettings/applications/InstalledAppDetails;

    #calls: Lcom/android/OriginalSettings/applications/InstalledAppDetails;->processClearMsg(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->access$000(Lcom/android/OriginalSettings/applications/InstalledAppDetails;Landroid/os/Message;)V

    goto :goto_0

    .line 178
    :pswitch_2
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$1;->this$0:Lcom/android/OriginalSettings/applications/InstalledAppDetails;

    #getter for: Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;
    invoke-static {v0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->access$200(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)Lcom/android/OriginalSettings/applications/ApplicationsState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$1;->this$0:Lcom/android/OriginalSettings/applications/InstalledAppDetails;

    #getter for: Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;
    invoke-static {v1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->access$100(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :pswitch_3
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$1;->this$0:Lcom/android/OriginalSettings/applications/InstalledAppDetails;

    #calls: Lcom/android/OriginalSettings/applications/InstalledAppDetails;->processMoveMsg(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->access$300(Lcom/android/OriginalSettings/applications/InstalledAppDetails;Landroid/os/Message;)V

    goto :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
