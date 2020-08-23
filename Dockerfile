### START ####
# docker build -t cobra .
#docker run --rm --volume="$PWD:/go/src/github.com/michalsz/duplicator" -it cobra /bin/sh
FROM golang:1.15rc1-alpine3.12
RUN apk add git nano
RUN go get -u github.com/spf13/cobra/cobra
RUN mkdir -p /go/src/github.com/michalsz/duplicator
WORKDIR /go/src/github.com/michalsz/duplicator

#RUN cobra init --pkg-name github.com/michalsz/duplicator
#RUN cobra add duplicate
#RUN go build -o duplicator main.go
#RUN cobra add insert
#RUN go build -o duplicator main.go
### END ####

#https://blog.railwaymen.org/golang-tutorial-how-to-implement-cli-app-in-4-steps-using-cobra-library

#DEFINE FLAG FOR "duplicate" command in file /go/src/github.com/michalsz/duplicator/cmd/duplicate.go
#var fileExt string
#add to init() function
#duplicateCmd.Flags().StringVarP(&fileExt, "extension", "e", "", "file extension is required")
#duplicateCmd.MarkFlagRequired("extension")
#ADD print in the Run function
#func(cmd *cobra.Command, args []string) {
#		fmt.Println("duplicate called")
#		fmt.Println(fileExt)
#	},

#go build -o  duplicator main.go
# execute the command
# ./duplicator duplicate -e txt
# define a new flag 'dirName' in init function
# duplicateCmd.PersistentFlags().StringVarP(&dirName, "dirname", "d", "copied_files", "dir to copie")
# flag -d is not required , but flag -e is required
# ADD NEW FUNCTION "version"
# cobra add version

# add function to "version.go"
#func version(){
#	fmt.Println("v0.1")
#}
# modify RUN 
#Run: func(cmd *cobra.Command, args []string) { fmt.Println("version called") version() },
