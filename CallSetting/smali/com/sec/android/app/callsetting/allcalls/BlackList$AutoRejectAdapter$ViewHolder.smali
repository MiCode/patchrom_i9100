.class Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "BlackList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field checkbox:Landroid/widget/CheckBox;

.field contact_name:Landroid/widget/TextView;

.field summary:Landroid/widget/TextView;

.field text:Landroid/widget/TextView;

.field text_layout:Landroid/widget/LinearLayout;

.field final synthetic this$1:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 943
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$ViewHolder;->this$1:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
