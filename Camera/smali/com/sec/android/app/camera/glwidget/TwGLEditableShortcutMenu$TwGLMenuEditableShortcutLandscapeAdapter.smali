.class Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu$TwGLMenuEditableShortcutLandscapeAdapter;
.super Ljava/lang/Object;
.source "TwGLEditableShortcutMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLList$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwGLMenuEditableShortcutLandscapeAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 285
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu$TwGLMenuEditableShortcutLandscapeAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 286
    #setter for: Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mFirstBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;
    invoke-static {p1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->access$202(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;)Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    .line 287
    #setter for: Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mLastBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;
    invoke-static {p1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->access$302(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;)Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    .line 288
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu$TwGLMenuEditableShortcutLandscapeAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;)Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->getNumberOfItems()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu$TwGLMenuEditableShortcutLandscapeAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mCols:I
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;
    .locals 12
    .parameter "position"
    .parameter "convertView"

    .prologue
    const/4 v4, 0x0

    .line 295
    if-nez p2, :cond_5

    .line 296
    new-instance v11, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu$TwGLMenuEditableShortcutLandscapeAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    #getter for: Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v11, v1, v4, v4}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 297
    .local v11, v:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->access$700()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v3, v1

    .line 298
    .local v3, left:F
    const/4 v7, 0x0

    .local v7, i:I
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu$TwGLMenuEditableShortcutLandscapeAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mCols:I
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;)I

    move-result v1

    mul-int v10, p1, v1

    .local v10, resourceIndex:I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu$TwGLMenuEditableShortcutLandscapeAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mCols:I
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;)I

    move-result v1

    if-ge v7, v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu$TwGLMenuEditableShortcutLandscapeAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;)Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->getNumberOfItems()I

    move-result v1

    if-ge v10, v1, :cond_3

    .line 299
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu$TwGLMenuEditableShortcutLandscapeAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;)Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v9

    .line 301
    .local v9, itemData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu$TwGLMenuEditableShortcutLandscapeAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    #getter for: Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->access$800(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu$TwGLMenuEditableShortcutLandscapeAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mLastBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;)Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu$TwGLMenuEditableShortcutLandscapeAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mLandscapeList:Lcom/sec/android/glview/TwGLList;
    invoke-static {v5}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->access$900(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;)Lcom/sec/android/glview/TwGLList;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu$TwGLMenuEditableShortcutLandscapeAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mLandscapeList:Lcom/sec/android/glview/TwGLList;
    invoke-static {v6}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->access$900(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;)Lcom/sec/android/glview/TwGLList;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;-><init>(Lcom/sec/android/glview/TwGLContext;Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;FFLcom/sec/android/glview/TwGLView;Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 303
    .local v0, dropBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu$TwGLMenuEditableShortcutLandscapeAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    #setter for: Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mLastBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->access$302(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;)Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    .line 304
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu$TwGLMenuEditableShortcutLandscapeAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mFirstBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;)Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    move-result-object v1

    if-nez v1, :cond_0

    .line 305
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu$TwGLMenuEditableShortcutLandscapeAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    #setter for: Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mFirstBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->access$202(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;)Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    .line 308
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu$TwGLMenuEditableShortcutLandscapeAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mViewList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->access$1000(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v9}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/glview/TwGLView;

    .line 309
    .local v8, item:Lcom/sec/android/glview/TwGLView;
    if-nez v8, :cond_1

    .line 310
    invoke-virtual {v9}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    const/16 v2, 0x63

    if-ne v1, v2, :cond_2

    .line 311
    new-instance v8, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .end local v8           #item:Lcom/sec/android/glview/TwGLView;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu$TwGLMenuEditableShortcutLandscapeAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    #getter for: Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->access$1100(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    .line 320
    .restart local v8       #item:Lcom/sec/android/glview/TwGLView;
    :cond_1
    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    add-float/2addr v3, v1

    .line 321
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->access$700()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v3, v1

    .line 322
    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 324
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu$TwGLMenuEditableShortcutLandscapeAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mLandscapeList:Lcom/sec/android/glview/TwGLList;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->access$900(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;)Lcom/sec/android/glview/TwGLList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 325
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu$TwGLMenuEditableShortcutLandscapeAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    .line 326
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu$TwGLMenuEditableShortcutLandscapeAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->setOnDropListener(Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;)V

    .line 327
    invoke-virtual {v11, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 298
    add-int/lit8 v7, v7, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu$TwGLMenuEditableShortcutLandscapeAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mCols:I
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;)I

    move-result v1

    mul-int/2addr v1, p1

    add-int v10, v1, v7

    goto/16 :goto_0

    .line 313
    :cond_2
    const-string v1, "MenuBase"

    const-string v2, "========================================="

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const-string v1, "MenuBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing item in mViewList, CommandId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-string v1, "MenuBase"

    const-string v2, "========================================="

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 329
    .end local v0           #dropBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;
    .end local v8           #item:Lcom/sec/android/glview/TwGLView;
    .end local v9           #itemData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu$TwGLMenuEditableShortcutLandscapeAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->drawLines:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->access$1200(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 330
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu$TwGLMenuEditableShortcutLandscapeAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    #getter for: Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->access$1300(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->access$1400()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->access$1500()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x7f0201a9

    invoke-direct {v1, v2, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {v11, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 335
    .end local v3           #left:F
    .end local v7           #i:I
    .end local v10           #resourceIndex:I
    .end local v11           #v:Lcom/sec/android/glview/TwGLViewGroup;
    :cond_4
    :goto_1
    return-object v11

    :cond_5
    move-object v11, p2

    goto :goto_1
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 339
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu$TwGLMenuEditableShortcutLandscapeAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    #setter for: Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mLastBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->access$302(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;)Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    .line 340
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu$TwGLMenuEditableShortcutLandscapeAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    #setter for: Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mFirstBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->access$202(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;)Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    .line 341
    return-void
.end method
