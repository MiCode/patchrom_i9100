.class public Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;
.super Ljava/lang/Object;
.source "PrefixDialingList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PrefixItem"
.end annotation


# instance fields
.field public checked:I

.field public id:I

.field public prefix_num:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter "num"
    .parameter "_id"
    .parameter "check"

    .prologue
    .line 350
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 351
    iput-object p2, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;->prefix_num:Ljava/lang/String;

    .line 352
    iput p3, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;->id:I

    .line 353
    iput p4, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;->checked:I

    .line 354
    return-void
.end method
