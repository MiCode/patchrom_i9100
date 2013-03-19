.class Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu$TwGLMenuAdapter;
.super Ljava/lang/Object;
.source "TwGLThumnailListMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLList$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwGLMenuAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu$TwGLMenuAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v0

    return v0
.end method

.method public getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;
    .locals 10
    .parameter "position"
    .parameter "convertView"

    .prologue
    const/4 v8, 0x4

    const/4 v9, 0x1

    .line 106
    if-nez p2, :cond_1

    .line 107
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v6

    .line 108
    .local v6, itemData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    invoke-virtual {v6, v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;

    #getter for: Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;

    #getter for: Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;

    #getter for: Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;)Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v7

    .line 109
    .local v7, command:Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v7, :cond_0

    .line 110
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->getZorder()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v7, v1}, Lcom/sec/android/app/camera/command/MenuCommand;->setZOrder(I)V

    .line 111
    :cond_0
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;

    #getter for: Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->access$700()I

    move-result v2

    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->access$800()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->access$800()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->access$900()I

    move-result v5

    int-to-float v5, v5

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    .line 112
    .local v0, item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    invoke-virtual {v0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setRotatable(Z)V

    .line 113
    invoke-virtual {v0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setCenterPivot(Z)V

    .line 114
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->mList:Lcom/sec/android/glview/TwGLList;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->access$1000(Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;)Lcom/sec/android/glview/TwGLList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 115
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->getZorder()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setZOrder(I)V

    .line 118
    .end local v0           #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    .end local v6           #itemData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v7           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p2

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method
