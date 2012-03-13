.class Lcom/sec/android/app/callsetting/allcalls/WhiteList$QueryThread;
.super Ljava/lang/Thread;
.source "WhiteList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/callsetting/allcalls/WhiteList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$QueryThread;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/callsetting/allcalls/WhiteList;Lcom/sec/android/app/callsetting/allcalls/WhiteList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/sec/android/app/callsetting/allcalls/WhiteList$QueryThread;-><init>(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$QueryThread;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    iget-object v0, v0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->contactQueryHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v9

    .line 140
    .local v9, msg:Landroid/os/Message;
    const/16 v0, 0x64

    iput v0, v9, Landroid/os/Message;->what:I

    .line 143
    const/4 v7, 0x0

    .line 144
    .local v7, contact_cursor:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 145
    .local v10, shouldDefaultName:Z
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$QueryThread;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$100(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_5

    .line 146
    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$QueryThread;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$100(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;

    iget-object v0, v0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 149
    .local v1, contactUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$QueryThread;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    invoke-virtual {v0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "display_name"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 153
    if-eqz v7, :cond_0

    .line 154
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 156
    const-string v0, "display_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 158
    .local v6, columnIndex:I
    const/4 v0, -0x1

    if-eq v6, v0, :cond_3

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$QueryThread;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$100(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;->contact_name:Ljava/lang/String;

    .line 171
    .end local v6           #columnIndex:I
    :cond_0
    :goto_1
    if-eqz v7, :cond_1

    .line 172
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 175
    :cond_1
    if-eqz v10, :cond_2

    .line 176
    const/4 v10, 0x0

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$QueryThread;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->defaultName:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$200(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$QueryThread;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$100(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;

    iget-object v0, v0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;->contact_name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$QueryThread;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$100(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$QueryThread;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->defaultName:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$200(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;->contact_name:Ljava/lang/String;

    .line 145
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 163
    .restart local v6       #columnIndex:I
    :cond_3
    const/4 v10, 0x1

    goto :goto_1

    .line 167
    .end local v6           #columnIndex:I
    :cond_4
    const/4 v10, 0x1

    goto :goto_1

    .line 184
    .end local v1           #contactUri:Landroid/net/Uri;
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$QueryThread;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    iget-object v0, v0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->contactQueryHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 185
    return-void
.end method
