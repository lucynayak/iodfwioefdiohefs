.class public final Lw/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw/h;->f([La0/e$c;I)La0/e$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw/h$b<",
        "La0/e$c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, La0/e$c;

    iget p1, p1, La0/e$c;->c:I

    return p1
.end method

.method public final b(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, La0/e$c;

    iget-boolean p1, p1, La0/e$c;->d:Z

    return p1
.end method
