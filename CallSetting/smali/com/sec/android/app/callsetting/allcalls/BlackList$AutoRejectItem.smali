.class Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;
.super Ljava/lang/Object;
.source "BlackList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/callsetting/allcalls/BlackList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoRejectItem"
.end annotation


# instance fields
.field public checked:I

.field public contact_name:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public matched:I

.field public reject_num:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/callsetting/allcalls/BlackList;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter "num"
    .parameter "_id"
    .parameter "check"
    .parameter "match"

    .prologue
    .line 376
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 377
    iput-object p2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->reject_num:Ljava/lang/String;

    .line 378
    iput-object p3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->id:Ljava/lang/String;

    .line 379
    iput p4, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->checked:I

    .line 380
    iput p5, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->matched:I

    .line 381
    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->defaultName:Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$500(Lcom/sec/android/app/callsetting/allcalls/BlackList;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->contact_name:Ljava/lang/String;

    .line 382
    return-void
.end method
