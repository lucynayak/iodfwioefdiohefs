.class public Lcom/microsoft/xbox/xle/app/FriendFinderSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;
    }
.end annotation


# static fields
.field private static icons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/microsoft/xbox/service/model/friendfinder/RecommendationTypeIcon;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ICONS:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIconBySize(Ljava/lang/String;Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/xle/app/FriendFinderSettings;->icons:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_3

    sget-object v0, Lcom/microsoft/xbox/xle/app/FriendFinderSettings;->icons:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/service/model/friendfinder/RecommendationTypeIcon;

    if-eqz p0, :cond_3

    sget-object v0, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$2;->$SwitchMap$com$microsoft$xbox$xle$app$FriendFinderSettings$IconImageSize:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/microsoft/xbox/service/model/friendfinder/RecommendationTypeIcon;->large:Ljava/lang/String;

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/microsoft/xbox/service/model/friendfinder/RecommendationTypeIcon;->medium:Ljava/lang/String;

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/microsoft/xbox/service/model/friendfinder/RecommendationTypeIcon;->small:Ljava/lang/String;

    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getIconsFromJson(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/xle/app/FriendFinderSettings;->icons:Ljava/util/HashMap;

    :try_start_0
    new-instance v0, Lp1/e;

    invoke-direct {v0}, Lp1/e;-><init>()V

    new-instance v1, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$1;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$1;-><init>(Lcom/microsoft/xbox/xle/app/FriendFinderSettings;)V

    invoke-virtual {v1}, Lu1/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lp1/e;->d(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/model/friendfinder/RecommendationTypeIcon;

    sget-object v1, Lcom/microsoft/xbox/xle/app/FriendFinderSettings;->icons:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/microsoft/xbox/service/model/friendfinder/RecommendationTypeIcon;->type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method
