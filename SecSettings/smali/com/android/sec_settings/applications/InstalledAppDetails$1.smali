.class Lcom/android/sec_settings/applications/InstalledAppDetails$1;
.super Landroid/os/Handler;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/applications/InstalledAppDetails;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/sec_settings/applications/InstalledAppDetails$1;->this$0:Lcom/android/sec_settings/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/sec_settings/applications/InstalledAppDetails$1;->this$0:Lcom/android/sec_settings/applications/InstalledAppDetails;

    invoke-virtual {v0}, Lcom/android/sec_settings/applications/InstalledAppDetails;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 222
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 224
    :pswitch_1
    iget-object v0, p0, Lcom/android/sec_settings/applications/InstalledAppDetails$1;->this$0:Lcom/android/sec_settings/applications/InstalledAppDetails;

    #calls: Lcom/android/sec_settings/applications/InstalledAppDetails;->processClearMsg(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/sec_settings/applications/InstalledAppDetails;->access$000(Lcom/android/sec_settings/applications/InstalledAppDetails;Landroid/os/Message;)V

    goto :goto_0

    .line 228
    :pswitch_2
    iget-object v0, p0, Lcom/android/sec_settings/applications/InstalledAppDetails$1;->this$0:Lcom/android/sec_settings/applications/InstalledAppDetails;

    #getter for: Lcom/android/sec_settings/applications/InstalledAppDetails;->mState:Lcom/android/sec_settings/applications/ApplicationsState;
    invoke-static {v0}, Lcom/android/sec_settings/applications/InstalledAppDetails;->access$200(Lcom/android/sec_settings/applications/InstalledAppDetails;)Lcom/android/sec_settings/applications/ApplicationsState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/applications/InstalledAppDetails$1;->this$0:Lcom/android/sec_settings/applications/InstalledAppDetails;

    #getter for: Lcom/android/sec_settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/sec_settings/applications/ApplicationsState$AppEntry;
    invoke-static {v1}, Lcom/android/sec_settings/applications/InstalledAppDetails;->access$100(Lcom/android/sec_settings/applications/InstalledAppDetails;)Lcom/android/sec_settings/applications/ApplicationsState$AppEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/sec_settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :pswitch_3
    iget-object v0, p0, Lcom/android/sec_settings/applications/InstalledAppDetails$1;->this$0:Lcom/android/sec_settings/applications/InstalledAppDetails;

    #calls: Lcom/android/sec_settings/applications/InstalledAppDetails;->processMoveMsg(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/sec_settings/applications/InstalledAppDetails;->access$300(Lcom/android/sec_settings/applications/InstalledAppDetails;Landroid/os/Message;)V

    goto :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
