.class public Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;
.super Ljava/lang/Object;
.source "WhiteList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/callsetting/allcalls/WhiteList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AutoRejectItem"
.end annotation


# instance fields
.field public checked:I

.field public contact_name:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public reject_num:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/callsetting/allcalls/WhiteList;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter "num"
    .parameter "_id"
    .parameter "check"

    .prologue
    .line 298
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput-object p2, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;->reject_num:Ljava/lang/String;

    .line 300
    iput-object p3, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;->id:Ljava/lang/String;

    .line 301
    iput p4, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;->checked:I

    .line 302
    #getter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->defaultName:Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$200(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;->contact_name:Ljava/lang/String;

    .line 303
    return-void
.end method
