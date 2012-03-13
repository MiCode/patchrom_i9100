.class public Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectItem;
.super Ljava/lang/Object;
.source "BlackListNumber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AutoRejectItem"
.end annotation


# instance fields
.field public checked:I

.field public id:Ljava/lang/String;

.field public matched:I

.field public reject_num:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter "num"
    .parameter "_id"
    .parameter "check"
    .parameter "match"

    .prologue
    .line 309
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectItem;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 310
    iput-object p2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectItem;->reject_num:Ljava/lang/String;

    .line 311
    iput-object p3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectItem;->id:Ljava/lang/String;

    .line 312
    iput p4, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectItem;->checked:I

    .line 313
    iput p5, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectItem;->matched:I

    .line 315
    return-void
.end method
