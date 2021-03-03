const router = require('express').Router();

const Company = require('../models/Company');
const Employee = require('../models/Employee');

router.get('/under-1-year', (req,res)=>{
    let queryString = "let yearAgo = new Date();\n" +
        "    yearAgo.setFullYear(yearAgo.getFullYear() - 1);\n" +
        "    Company.find({register_date: {$gt: yearAgo}}, (err, companies)=>{...})";
    let yearAgo = new Date();
    yearAgo.setFullYear(yearAgo.getFullYear() - 1);
    console.log(yearAgo)
    Company.find({register_date: {$gt: yearAgo}}, (err, companies)=>{
        res.json({
            query: queryString,
            companies
        });
    });
});
router.get('/emp-20-30', (req,res)=>{
    Employee.aggregate([
        {
            $addFields: {
                thisYear: {$year: new Date()},
                birthYear: {$year: "$birth_date"}
            }
        }, {
            $project: {
                _id: 0,
                is_admin: 1,
                first_name: 1,
                last_name: 1,
                national_code: 1,
                gender: 1,
                birth_date: 1,
                age: {
                    $subtract: ["$thisYear", "$birthYear"]
                }
            }
        },
        {
            $match: {
                age: {$gte: 20, $lte: 30}
            }
        }
    ], (err, employees)=>{
        res.json(employees)
    })
})
router.get('/admins', (req,res)=>{
    Employee.find({is_admin: true}, (err, employees)=>{
        res.json(employees);
    });
});
router.get('/update-company-city', (req,res)=>{
    Company.updateMany({}, {province: "Tehran", city: "Tehran"}, (err, update)=>{
        res.json(update);
    });
});
module.exports = router;