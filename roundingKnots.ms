(
        fn round val =
        (
                dec = val - (val as integer)
                if dec < 0.5 then
                (
                        return (val as integer)
                ) else
                (
                        return ((val as integer)+1)
                )
        )
        for o = $ do
        (
                if classof o == SplineShape do
                (
                        ns = numsplines o
                        for s = 1 to ns do
                        (
                                nk = numknots o s
                                for k = 1 to nk do
                                (
                                        try
                                        (
                                                kp = getKnotPoint o ns k
                                                setKnotPoint o ns k [round kp[1], round kp[2], round kp[3]]
                                        ) catch()
                                )
                        )
                        updateShape o
                )
        )
)
